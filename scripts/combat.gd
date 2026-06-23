
class_name Combat
extends RefCounted


var hit_or_not: bool
var damage_dealt: float

# Starting with default values 
func _init() -> void:
	hit_or_not = false
	damage_dealt = 0
	
## An attempt at attacking an enemy (may dodge)? 
func attack(attacker: CharacterBody2D, target: CharacterBody2D):
	print("An attack is taking place")
	print("The attacker: ", attacker, "The target: ", target )
	print("Target health before: ", target.health)
	
	
	target.health = target.health - (attacker.damage * target.health)
	
	
	
	
	print("The target health after: ", target.health)
	return self
	
## After an attack is initiated, if hit then perhaps returns damage dealt?	
func hit():
	pass
