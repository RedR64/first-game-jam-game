extends Node2D

func _process(delta: float) -> void:
	pass
	#print("*internal screaming*")
	
	# Mouse in viewport coordinates.	
func _on_play_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("left_click"):
		play()
func _on_quit_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("left_click"):
		quit()
func _on_accessories_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("left_click"):
		accessories()


func _on_settings_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("left_click"):
		settings()


func _on_help_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("left_click"):
		help()


func _on_flip_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("left_click"):
		flip()
		
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("Esc"):
		quit()


func play():
	var next_scene = preload("res://scenes/office_background.tscn").instantiate()
	var current_scene = self
	get_tree().root.add_child(next_scene)
	get_tree().current_scene = next_scene
	get_tree().root.remove_child(current_scene)
	
func quit():
	get_tree().quit()
	
func accessories():
	print("Coming Soon™")
	
func settings():
	print("Coming Soon™")

func help():
	print("Coming Soon™")
	
func flip():
	print("Coming Soon™")
