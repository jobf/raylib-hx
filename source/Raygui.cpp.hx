package;

/**********************************************************************************************
 *
 *   raylib-hx - a Haxe binding for the library raylib, a simple and easy-to-use library to enjoy videogames programming
 *
 *   LICENSE: zlib/libpng
 *
 *   raylib-hx is licensed under an unmodified zlib/libpng license, which is an OSI-certified,
 *   BSD-like license that allows static linking with closed source software:
 *
 *   Copyright (c) 2021-2022 Ratul Krisna (@ForeignSasquatch)
 *
 *   This software is provided "as-is", without any express or implied warranty. In no event
 *   will the authors be held liable for any damages arising from the use of this software.
 *
 *   Permission is granted to anyone to use this software for any purpose, including commercial
 *   applications, and to alter it and redistribute it freely, subject to the following restrictions:
 *
 *     1. The origin of this software must not be misrepresented; you must not claim that you
 *     wrote the original software. If you use this software in a product, an acknowledgment
 *     in the product documentation would be appreciated but is not required.
 *
 *     2. Altered source versions must be plainly marked as such, and must not be misrepresented
 *     as being the original software.
 *
 *     3. This notice may not be removed or altered from any source distribution.
 *
**********************************************************************************************/

import cpp.Pointer;
import Rl.Vector2;
import cpp.Star;
import cpp.ConstCharStar;
import Rl.Rectangle;
import Rl.Font;

@:include("raygui.h")
@:native("GuiState")
extern enum abstract GuiState(Int) from Int to Int{
    @:native("STATE_NORMAL")
    public var NORMAL;
    
    @:native("STATE_FOCUSED")
    public var FOCUSED;

    @:native("STATE_PRESSED")
    public var PRESSED;

    @:native("STATE_DISABLED")
    public var DISABLED;
}

@:include("raygui.h")
extern class Raygui {
    @:native("GuiEnable") public static function GuiEnable():Void;
    @:native("GuiDisable") public static function GuiDisable():Void;
    @:native("GuiLock") public static function GuiLock():Void;
    @:native("GuiUnlock") public static function GuiUnlock():Void;
    @:native("GuiFade") public static function GuiFade(alpha:Float):Void;
    @:native("GuiSetState") public static function GuiSetState(state:Int):Void;
    @:native("GuiGetState") public static function GuiGetState():Int;

    @:native("GuiSetFont") public static function GuiSetFont(font:Font):Void;
    @:native("GuiGetFont") public static function GuiGetFont():Font;

    @:native("GuiSetStyle") public static function GuiSetStyle(control:Int, property:Int, value:Int):Void;
    @:native("GuiGetStyle") public static function GuiGetStyle(control:Int, property:Int):Int;

    @:native("GuiWindowBox") public static function GuiWindowBox(bounds:Rectangle, title:ConstCharStar):Bool;
    @:native("GuiGroupBox") public static function GuiGroupBox(bounds:Rectangle, text:ConstCharStar):Void;
    @:native("GuiLine") public static function GuiLine(bounds:Rectangle, text:ConstCharStar):Void;
    @:native("GuiPanel") public static function GuiPanel(bounds:Rectangle):Void;
    @:native("GuiScrollPanel") public static function GuiScrollPanel(bounds:Rectangle, content:Rectangle, scroll:cpp.Pointer<Vector2>):Void;

    @:native("GuiButton") static function GuiButton(bounds:Rl.Rectangle, text:ConstCharStar):Bool;
    @:native("GuiSlider") static function GuiSlider(bounds:Rectangle, textLeft:ConstCharStar, textLeft:ConstCharStar, value:Float, minValue:Float, maxValue:Float):Float;
    @:native("GuiGrid") static function GuiGrid(bounds:Rectangle, spacing:Float, subdivs:Int):Vector2;

    @:native("GuiListView") static function GuiListView(bounds:Rectangle, text:ConstCharStar, scrollIndex:Pointer<Int>, active:Int):Int;
}