extends Node2D
class_name TurnQueue

var comb := Combat.new()

# true = clicking the wheel makes the player attack
# false = clicking the wheel makes the enemy attack
var is_player_turn: bool = true


func play_turn(player, npc) -> void:
	# Stop combat if someone is already defeated.
	if player.health <= 0:
		print("Player has been defeated.")
		return

	if npc.health <= 0:
		print("Enemy has been defeated.")
		return

	if is_player_turn:
		print("PLAYER TURN")
		comb.attack(player, npc)
	else:
		print("ENEMY TURN")
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
	



	# Flip whose turn it is for the next wheel click.
	is_player_turn = not is_player_turn

	print("Next turn is player: ", is_player_turn)
