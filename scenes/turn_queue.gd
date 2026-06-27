extends Node2D
class_name TurnQueue

var active_character
var nodes_children
var new_index = 0

var comb = Combat.new()

#enum State {START, PLAYER_TURN, ENEMY_TURN, WIN, LOSE}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	nodes_children = get_children()
	active_character = get_child(0)
	
	#var tree_node = preload("res://scenes/office_background.tscn")
	#add_child(tree_node)
	#tree_node.recieve_node_data(nodes_children)
	
	print("Children: ", nodes_children)
	
	#for i in range(2):
		#play_turn() # For testing
	
	
func _init() -> void:
	
	nodes_children = self.get_children()
	active_character = self.get_child(0)
	
	#var active_character = active_c
	#var nodes_children = nodes_c
	#
	#node = get_child(0)
	#add_child(node)
	
	active_character = get_children()
	print("Children: ", active_character)
	
#func instantiate():
	#nodes_children = get_children()
	#active_character = get_child(0)
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var health = 1
	if health <= 0:
		$shop_button.visible = true


func play_turn(player: CharacterBody2D, npc: CharacterBody2D): # The state, (0 to n) for however many nodes in the TurnQueue scene
	#await active_character.play_turn() # Probably do this later somewhere else?
	print("Get children in play_turn: ", get_children(true))
	print("Child count: ", get_child_count())
	print("Old index: ", get_index())
	print("Old Active: ", active_character)
	#var new_index: int = active_character.get_index() + 1
	
	
	## If 0, then it's the players turn, everything else is an enemy.
	## Need params (the character params)
	
	if get_index() == 0:
		## Player turn logic
		
		comb.attack(player, npc)
		
		
		if new_index == get_child_count() -1:
			new_index =0
			return
		else:
			new_index = new_index + 1
			active_character = get_child(new_index)
			print("Completed turn, new character index: ", new_index, " | Active: ", active_character)
		
	else:
		#Enemy logic
		
		
		comb.attack(npc, player)
		if player.health <= 0:
			loss()
		elif npc.health <= 0:
			return true
		if new_index == get_child_count() -1:
			new_index = 0
			return
		else:
			new_index = new_index + 1
			active_character = get_child(new_index)
			print("Completed turn, new character index: ", new_index, " | Active: ", active_character)
	
	
	
	
func loss():
	var next_scene = preload("res://main_menu.tscn").instantiate()
	var current_scene = self
	get_tree().root.add_child(next_scene)
	get_tree().current_scene = next_scene
	get_tree().root.remove_child(current_scene)
	
func win():
	$shop_button.visible = true
	$"Wheel of Spin/Area2D/CollisionShape2D".visible = false
	



func main():
	pass

	#turn.play_turn();
	
