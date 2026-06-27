extends Node2D

var wheel := wheel_2d.new()
var win_loss := winloss.new()
var shop_scene = preload("res://scenes/shop_screen.tscn").instantiate()
func _on_shop_test_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("left_click"):
			shop()
func shop():
	get_tree().root.add_child(shop_scene)

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("interact"):
		$"winlosss/shop_button".visible = not $"winlosss/shop_button".visible


func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			win_loss.win()
			wheel.on_area_2d_input_event()
			
