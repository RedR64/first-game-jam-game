extends Area2D


var comb = Combat.new();
var enemy = Enemy.new();
var player = Player.new();
var turn_queue_scene = preload("res://scenes/TurnQueue.tscn").instantiate()
var turn = TurnQueue.new();
var node_data: Array

const NUM_ENEMIES = 2
			
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	randomize()
	
	set_slices()
	
	#get_tree().root.add_child(turn_queue_scene)
	
	#$TurnQueue.add_child($TurnQueue/player) # Add player first
	
	#for i in range(NUM_ENEMIES):
		#$TurnQueue.add_child($TurnQueue/enemy.duplicate())
	
	

	

func _input_event(viewport: Viewport, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			
			
			var spin := Spin.new()
			spin.attack_spin()
			
			player.attach_stats(spin)
			
			#comb.attack(player, enemy)
			turn.play_turn(player, enemy)
			print("Player stats")
			print("Health: ", player.health, ", Defense: ", player.defense, ", Damage: ", player.damage)
			print("Enemies stats")
			print("Health: ", enemy.health, ", Defense: ", enemy.defense, ", Damage: ", enemy.damage)
			
			
			
			


func receive_node_data(data: Array) -> Array:
	node_data = data
	return data

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	

var slice_types = ["agility","currency_mult","damage","defense","health","saving_throw"]
	
func set_slices():
	var slice1 = randi_range(0,5)
	var slice2 = randi_range(0,5)
	var slice3 = randi_range(0,5)
	var slice4 = randi_range(0,5)
	print(slice1)
	var set_slice = load("res://art/"+ slice_types[slice1] +"_wheel.png")
	$WheelofSecondary/Area2D/WheelOfSlice/Area2D/health_wheel.texture = set_slice
	print(set_slice)
	var set_slice2 = load("res://art/"+ slice_types[slice2] +"_wheel.png")
	$WheelofSecondary/Area2D/WheelOfSlice2/Area2D/health_wheel.texture = set_slice2
	var set_slice3 = load("res://art/"+ slice_types[slice3] +"_wheel.png")
	$WheelofSecondary/Area2D/WheelOfSlice3/Area2D/health_wheel.texture = set_slice3
	var set_slice4 = load("res://art/"+ slice_types[slice4] +"_wheel.png")
	$WheelofSecondary/Area2D/WheelOfSlice4/Area2D/health_wheel.texture = set_slice4
	
	
	
	
