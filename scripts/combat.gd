
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
	
	
	
func _input(event):
	if event is InputEventKey and event.pressed:
		if event.keycode == KEY_T:
			print("T was pressed")
			return true
	
func battle(player: CharacterBody2D, npc: CharacterBody2D): # Could return a character (winner)?
	pass
	#var spinVar = Spin.new();
	#
	#
	## Starting a battle, loop until a character's health depletes	
	#var i = 1;
	#while(player.health != 0 || npc.health != 0): # || selection != run
		#
		## alternate turns for attacks
		#if i % 2:
			#attack(npc, player)
		#else:
			#attack(player, npc)
		#
		#print("Stats this turn")
		#print("Player health: ", player.health, " | NPC health: ", npc.health)
		## Move/turn
		#print("Press t to continue")
		#
		#_input(InputEventKey)
			#
			
		
		
	
