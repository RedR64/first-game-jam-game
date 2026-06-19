extends Area2D


			
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	randomize()

func _input_event(viewport: Viewport, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			print(randi() % 5 + 1) # Print a number between 1 and 5
			


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
