extends TileMap
enum CELL_TYPES {NONE = -1, TILE0, TILE1, TILE2, TILE3 }

func _process(_delta):
  clear_selected()
  
  var pos = get_global_mouse_position()
  var cell = world_to_map(pos)
  
  set_cellv(cell, CELL_TYPES.TILE3)

func clear_selected():
  var old = get_used_cells_by_id(CELL_TYPES.TILE3)
  for o in old:
    set_cellv(o, CELL_TYPES.NONE)
