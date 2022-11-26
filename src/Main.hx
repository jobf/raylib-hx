import Rl.Color;

class Main {
	static function main() {
		Rl.setTargetFPS(60);

		player = new Player(40, 60);

		controller = new Controller({
			on_move_right: () -> player.move(1, 0),
			on_move_left: () -> player.move(-1, 0),
			on_move_up: () -> player.move(0, -1),
			on_move_down: () -> player.move(0, 1)
		});

		Rl.initWindow(640, 480, "ray");

		while (!Rl.windowShouldClose()) {
			controller.update();
			Rl.beginDrawing();
			Rl.clearBackground(Rl.Colors.WHITE);
			player.draw();
			Rl.endDrawing();
		}

		Rl.closeWindow();
	}

	static var controller:Controller;

	static var player:Player;
}

class Player {
	var x:Int;
	var y:Int;
	public var size:Int = 50;
	public var color:Color = Rl.Colors.DARKPURPLE;
	public var speed:Int = 5;

	public function new(x:Int, y:Int) {
		this.x = x;
		this.y = y;
	}

	public function draw() {
		Rl.drawCircle(x, y, size, color);
	}

	public function move(x_direction:Int, y_direction:Int) {
		x += x_direction * speed;
		y += y_direction * speed;
	}
}

@:structInit
class ControllerActions {
	public var on_move_left:Void->Void = () -> return;
	public var on_move_right:Void->Void = () -> return;
	public var on_move_up:Void->Void = () -> return;
	public var on_move_down:Void->Void = () -> return;
}

class Controller {
	var actions:ControllerActions;

	public function new(actions:ControllerActions) {
		this.actions = actions;
	}

	public function update() {
		switch Rl.getKeyPressed() {
			case Rl.Keys.RIGHT:
				move_right();
			case Rl.Keys.LEFT:
				move_left();
			case Rl.Keys.UP:
				move_up();
			case Rl.Keys.DOWN:
				move_down();
			case _:
				return;
		}
	}

	function move_right() {
		trace("right");
		actions.on_move_right();
	}

	function move_left() {
		trace("left");
		actions.on_move_left();
	}

	function move_up() {
		trace("up");
		actions.on_move_up();
	}

	function move_down() {
		trace("down");
		actions.on_move_down();
	}
}
