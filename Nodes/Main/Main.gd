extends Node2D

onready var viewport = get_viewport()
#onready var game_board = find_node("GameBoard")
#onready var control_board = find_node("ControlContainer")

const control_board_height = 128


func _ready():
  viewport.connect("size_changed", self, "on_window_resize")
  on_window_resize()

  Engine.set_target_fps(36)
  
func on_window_resize():
  var win_size = OS.get_window_size()

  #control_board.rect_position = Vector2(0, win_size.y - control_board_height)
  #control_board.rect_size = Vector2(win_size.x, control_board_height)

  #game_board.rect_position = Vector2(0, 0)
  #game_board.rect_size = Vector2(win_size.x, win_size.y - control_board_height)

