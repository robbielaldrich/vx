package main

import rl "vendor:raylib"

main :: proc() {
	rl.InitWindow(640, 480, "vx")
	defer rl.CloseWindow()

	for !rl.WindowShouldClose() {
		rl.BeginDrawing()
		rl.ClearBackground(rl.GRAY)
		rl.EndDrawing()
	}
}
