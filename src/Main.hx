import Rl;
import Core;
import Controller;

class Main {
	static var game:Game;

	static function main() {
		Rl.initWindow(640, 480, "ray");
		
		// using VSYNC_HINT is better than setTargetFPS as it will use the GPU as a source for timing, which is more reliable
		// more info here - https://bedroomcoders.co.uk/why-you-shouldnt-use-settargetfps-with-raylib/
		// it should result in less CPU and less screen tearing
		Rl.setWindowState(Rl.ConfigFlags.VSYNC_HINT);
		// Rl.setTargetFPS(60);

		game = new Game(game -> {
			return new TestScene(game);
		});

		while (!Rl.windowShouldClose()) {
			game.update(Rl.getFrameTime());
			Rl.beginDrawing();
			Rl.clearBackground(Rl.Colors.WHITE);
			game.draw();

			/*
				By default, Rl.endDrawing() calls the following processes:
				* 1. Draw remaining batch data: rlDrawRmain_loop_enderBatchActive()
				* 2. SwapScreenBuffer()
				* 3. Frame time control: WaitTime()
				* 4. PollInputEvents()
			 */
			Rl.endDrawing();
		}

		Rl.closeWindow();
	}
}


class TestScene extends Scene {

	static var controller:Controller;
	static var player:Player;

	public function init() {

		player = new Player(40, 60);

		controller = new Controller({
			on_move_right: () -> player.move(1, 0),
			on_move_left: () -> player.move(-1, 0),
			on_move_up: () -> player.move(0, -1),
			on_move_down: () -> player.move(0, 1)
		});
	}

	public function update(elapsed_seconds:Float) {
		controller.update();
	}
	
	public function draw() {
		player.draw();
	}
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
