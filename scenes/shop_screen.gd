extends Node2D



func _on_shop_exit_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event.is_action_pressed("left_click"):
		shop_exit()
		
func shop_exit():
	var current_scene = self
	#get_tree().root.remove_child(current_scene)
	var shopScreen = get_tree().root.get_child(current_scene)
	get_tree().root.remove_child(shopScreen)
