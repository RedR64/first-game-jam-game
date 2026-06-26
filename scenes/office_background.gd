extends Node2D
var shop_scene = preload("res://scenes/shop_screen.tscn").instantiate()
func _on_shop_test_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("left_click"):
			shop()
func shop():
	get_tree().root.add_child(shop_scene)
