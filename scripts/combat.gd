
## Class/Object [i]extending RefCounted for assisting with combat data computation[/i][br]
## [i]Call [method Class.attack] with paramaters [param attacker], [param target], both [CharacterBody2D] (which means our player and enemy classes will also work), which decides whether the attacker hit or not then automatically calls [/i][br]
## [i][method Class.hit] if it succeeds. Then the hit method will apply health changes to the enemy based on attacker's damage [/i][br]
## If the attack method fails, it will return [member Class.hit_or_not] which is a bool
class_name Combat
extends RefCounted

var random = RandomNumberGenerator.new();
var hit_array: Array
var hit_or_not: bool
var damage_dealt: float

# Starting with default values 
func _init() -> void:
	hit_array = [false, true]
	hit_or_not = false
	damage_dealt = 0
	
## An attempt at attacking an enemy (may dodge)? 
func attack(attacker: CharacterBody2D, target: CharacterBody2D):
	
	
	
	print("Hit or not: ")
	self.hit_or_not = self.hit_array[random.rand_weighted([target.agility, 1])]
	print(self.hit_or_not)
		
		
	if self.hit_or_not:
		hit(attacker, target)
	else: 
		return self.hit_or_not
		
	
## After an attack is initiated, if hit then perhaps returns damage dealt?	
func hit(attacker: CharacterBody2D, target: CharacterBody2D) -> void:
	
	print("The target's health before: ", target.health)
	target.health = target.health - (attacker.damage * target.health)
	print("The target's health after: ", target.health)
	
