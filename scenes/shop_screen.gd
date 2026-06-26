extends Node2D

func _on_shop_exit_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event.is_action_pressed("left_click"):
		shop_exit()

func shop_exit():
	get_tree().root.remove_child(self)
