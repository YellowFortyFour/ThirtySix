extends CanvasLayer

onready var viewport = get_viewport()
onready var hudContainer: Control = get_node("HudContainer")

func _ready():
  viewport.connect("size_changed", self, "on_window_resize")
  on_window_resize()  
  
func on_window_resize():
  var win_size = OS.get_window_size()
  hudContainer.rect_size = Vector2(hudContainer.rect_size.x, win_size.y)
