import sys.io.File;
import haxe.Template;

using StringTools;

class Binder {
	public static function main() {
		var path = '../source/lib/src/extras/raygui.h';
		var content = File.getContent(path);
		var lines:Array<Line> = [];
		for (index => line in content.split("\n")) {
			lines.push({
				text: line,
				index: index
			});
		}

		var ignore_ranges:Array<Range> = [
			{
				first: 0,
				last: 294,
			},
			{
				first: 496,
				last: 598,
			},
			{
				first: 858,
				last: 1263,
			},
			{
				first: 4069,
				last: lines.length,
			},
		];

		var map = new LineMap(lines, ignore_ranges);
		var bindings_file_contents:String = Templating.extract_bindings(map, lines);
		File.saveContent("Raygui.cpp.test.hx", bindings_file_contents);
	}
}

/**
	Performs a first pass of all the lines to find locations of
	enums, classes and functions
**/
class LineMap {
	public var lines_of_interest(default, null):Array<LineOfInterest>;

	static var function_identifiers:Map<String, ReturnType> = [
		"void" => VOID,
		"bool" => BOOL,
		"int" => INT,
		"unsigned int" => INT,
		"float" => FLOAT,
		"Font" => COMPLEX("Font"),
		"Rectangle" => COMPLEX("Rectangle"),
		"Color" => COMPLEX("Color")
	];

	public function new(lines:Array<Line>, ignore:Array<Range>) {
		lines_of_interest = [];
		var ignore_index = 0;

		for (index => line in lines) {
			if (index == ignore[ignore_index].last) {
				// if at end of ignore range
				// set next range index
				ignore_index++;
			}

			var should_ignore_Line = index > ignore[ignore_index].first && index < ignore[ignore_index].last;
			if (should_ignore_Line) {
				// continue to next line
				// if current index is within the
				// range of lines that should be ignored
				continue;
			}

			if (line.text.startsWith("typedef")) {
				// typedefs will become either
				// - enum abstract (Int) from Int to Int{
				// - Class with @:structAccess

				var is_enum = line.text.charAt(8) == "e";

				// collect significant line
				lines_of_interest.push({
					line: index,
					interest: is_enum ? ENUM : STRUCT
				});
			} else {
				var looks_intersting = false;
				for (identifier in function_identifiers.keys()) {
					// functions can be identified in a variety of ways
					// iterate through the various function_identifiers
					if (line.text.contains(identifier)) {
						// if the identifier is present
						// collect significant line
						looks_intersting = true;
						lines_of_interest.push({
							line: index,
							interest: FUNCTION(function_identifiers[identifier])
						});
					}
				}
			}
		}
	}
}

/**
	Extracts the binding data as idintified in the first pass
**/
class Templating {
	public static function extract_bindings(map:LineMap, lines:Array<Line>):String {
		var buffer = new StringBuf();

		for (point in map.lines_of_interest) {
			var binding:Binding = switch point.interest {
				case STRUCT: extract_from_typedef(lines, point);
				case ENUM: extract_from_typedef(lines, point);
				// case FUNCTION(returns): extract_function(lines, point, returns);
				case _: null;
			}

			var template = new EnumTemplate();
			var template_start = new Template(template.begin);
			var template_field = new Template(template.field);

			if (binding != null) {
				// trace('${point.line} ${point.interest}');
				// trace('name ${binding.name}');
				// trace('num fields ${binding.interesting_lines.length}');
				if (binding.identifier.interest == ENUM) {
					var start = template_start.execute({
						NATIVE_NAME: binding.name,
						COMMENTS: binding.comments,
						INCLUDE: "raygui.h"
					});
					buffer.add(start);
					// trace(start);

					for (line in binding.interesting_lines) {
						var index_of_comment = line.text.lastIndexOf("/") - 1;

						var line_cleaned = index_of_comment > 0 ? line.text.substring(0, index_of_comment) : line.text;
						line_cleaned = line_cleaned.replace(" ", "");
						line_cleaned = line_cleaned.replace(",", "");
						var line_segments = line_cleaned.split("=");

						var field = template_field.execute({
							FIELD_NAME: line_segments[0]
						});
						buffer.add(field);
						// trace(field);
					}

					var end = "}\n";
					buffer.add(end);
					// trace(end);
				}
			}
		}

		return buffer.toString();
	}

	static function extract_from_typedef(lines:Array<Line>, of_interest:LineOfInterest):Binding {
		var start_line = lines[of_interest.line];
		var name = "";
		var interesting_lines:Array<Line> = [];

		var line_index = of_interest.line + 1;
		var is_final_line = false;
		while (!is_final_line) {
			var line = lines[line_index];
			if (line.text.startsWith("}")) {
				name = line.text.substring(2, line.text.length - 1);
				is_final_line = true;
				// trace('ends with $name');
			} else {
				interesting_lines.push(line);
				// trace(line.text);
			}
			line_index++;
		}

		return {
			start_line: start_line,
			name: name,
			interesting_lines: interesting_lines,
			identifier: of_interest,
			comments: extract_comments(lines, start_line)
		}
	}

	static function extract_comments(lines:Array<Line>, start_line:Line):String {
		var comments:Array<Line> = [];
		var line_index_above:Int = start_line.index - 1;
		var foundEmptyLine = false;
		while (!foundEmptyLine) {
			var lineAbove = lines[line_index_above];
			line_index_above--;
			// trace(lineAbove.text);

			var isComment = lineAbove.text.startsWith("// ");
			if (isComment) {
				// trace(lineAbove.text);
				comments.push(lineAbove);
			} else {
				foundEmptyLine = true;
			}
		}

		// if(comments.length > 0){
		//     return comments.join(" ");
		// }

		return "todo - extract comments";
	}
}

@:structInit
class Line {
	public var text:String;
	public var index:Int;
}

@:structInit
class Argument {
	public var name:String;
	public var type:String;
}

enum InterestType {
	STRUCT;
	ENUM;
	FUNCTION(returns:ReturnType);
}

enum ReturnType {
	VOID;
	BOOL;
	INT;
	FLOAT;
	COMPLEX(name:String);
}

@:structInit
class LineOfInterest {
	public var line:Int;
	public var interest:InterestType;
}

@:structInit
class Range {
	public var first:Int;
	public var last:Int;
}

@:structInit
class Binding {
	public var start_line:Line;
	public var identifier:LineOfInterest;
	public var interesting_lines:Array<Line>;
	public var name:String;
	public var comments:String;
}

interface BinderTemplate {
	public var begin:String;
	public var field:String;
}

class EnumTemplate implements BinderTemplate {
	public function new() {}

	public var begin = '
@:include("::INCLUDE::")
@:native("::NATIVE_NAME::")
/** ::COMMENTS:: **/
extern enum abstract ::NATIVE_NAME::(Int) from Int to Int{\n';

	public var field = '    @:native("::FIELD_NAME::") var ::FIELD_NAME::;\n';
}
