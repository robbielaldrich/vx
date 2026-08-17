package main

import rl "vendor:raylib"
import "core:strings"

State :: struct {
    screen_width: i32,
    screen_height: i32,
    screen_title: string,

    settings_screen: bool,
}

init_state :: proc() -> State {
  return State{
    screen_width = 640,
    screen_height = 480,
    screen_title = "vx - Pixels Editor",
  }
}

main :: proc() {
  state := init_state()

	screen_title := strings.clone_to_cstring(state.screen_title)
	defer delete(screen_title)

	rl.InitWindow(state.screen_width, state.screen_height, screen_title)
	defer rl.CloseWindow()

	for !rl.WindowShouldClose() {
		rl.BeginDrawing()
		rl.ClearBackground(rl.GRAY)
		rl.EndDrawing()
	}
}
