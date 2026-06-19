extends Area2D


			
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	randomize()
	

func _input_event(viewport: Viewport, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			
			var spin := Spin.new()
			spin.spin()
			
			print("Health: ", spin.health, ", Defense: ", spin.defense, ", Damage: ", spin.damage)
			
			


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
	
	
	
	
	
	
