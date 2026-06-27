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

	# Flip whose turn it is for the next wheel click.
	is_player_turn = not is_player_turn

	print("Next turn is player: ", is_player_turn)
