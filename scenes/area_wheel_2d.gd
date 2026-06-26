extends Area2D


var comb = Combat.new();
var enemy = Enemy.new();
var player = Player.new();
var turn = TurnQueue.new();
			
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	randomize()
	
	

func _input_event(viewport: Viewport, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			
			
			var spin := Spin.new()
			spin.attack_spin()
			
			player.attach_stats(spin)
			
			comb.attack(player, enemy)
			print("Player stats")
			print("Health: ", player.health, ", Defense: ", player.defense, ", Damage: ", player.damage)
			print("Enemies stats")
			print("Health: ", enemy.health, ", Defense: ", enemy.defense, ", Damage: ", enemy.damage)
			
			turn.play_turn()
			
			


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
	
	
	
	
	
	
