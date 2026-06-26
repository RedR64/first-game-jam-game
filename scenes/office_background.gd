extends Node2D
var open_closed = 0
var shop_scene = preload("res://scenes/shop_screen.tscn").instantiate()
func _on_shop_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("left_click"):
		if open_closed == 1:
			shop_exit()
			
		else:
			shop()
		
func shop():
	open_closed = 1
	get_tree().root.add_child(shop_scene)
	
func shop_exit():
	open_closed = 0
	get_tree().root.remove_child(shop_scene)
