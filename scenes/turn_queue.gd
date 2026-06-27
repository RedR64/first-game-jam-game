class_name TurnQueue
extends Node2D

var comb := Combat.new()
var win_loss :=winloss.new()

# true = clicking the wheel makes the player attack
# false = clicking the wheel makes the enemy attack
var is_player_turn: bool = true
var active_character
var new_index


func play_turn(player, npc) -> void:
	win_loss.win()
	# Stop combat if someone is already defeated.
	if player.health <= 0:
		print("Player has been defeated.")
		win_loss.loss()
		return

	if npc.health <= 0:
		print("Enemy has been defeated.")
		win_loss.win()
		return

	if is_player_turn:
		print("PLAYER TURN")
		comb.attack(player, npc)
	else:
		print("ENEMY TURN")
		comb.attack(npc, player)
		if player.health <= 0:
			win_loss.loss()
		elif npc.health <= 0:
			win_loss.win()
		if new_index == get_child_count() -1:
			new_index = 0
			return
		else:
			new_index = new_index + 1
			active_character = get_child(new_index)
			print("Completed turn, new character index: ", new_index, " | Active: ", active_character)
	
	
	



	# Flip whose turn it is for the next wheel click.
	is_player_turn = not is_player_turn

	print("Next turn is player: ", is_player_turn)
