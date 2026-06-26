extends Node2D
class_name TurnQueue

var active_character
var nodes_children
var new_index: int

#enum State {START, PLAYER_TURN, ENEMY_TURN, WIN, LOSE}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	nodes_children = get_children()
	active_character = get_child(0)
	new_index = 0
	print("Children: ", nodes_children)
	
	for i in range(2):
		play_turn() # For testing
	
	
func _init() -> void:
	pass
	#active_character = self.get_child(0)
	
	#var active_character: Node
	#var nodes_children: Array[Node]
	
	#node = get_child(0)
	#add_child(node)
	
	#active_character = get_children()
	#print("Children: ", active_character)
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func play_turn():
	#await active_character.play_turn() # Probably do this later somewhere else?
	print("Child count: ", get_child_count())
	print("Old index: ", get_index())
	print("Old Active: ", active_character)
	#var new_index: int = active_character.get_index() + 1
	
	new_index = new_index + 1
	active_character = get_child(new_index)
	print("Completed turn, new character index: ", new_index, " | Active: ", active_character)


func main():
	pass

	#turn.play_turn();
	
