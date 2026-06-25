
## Class/Object [i]extending RefCounted for randomly generating values[/i] [br]
## [i]After initiating an instance, keep in mind that default values are set. These
## Values are always the same. To randomly generate all values use the method [codeblock]Class.spin()[/codeblock][/i] [br] 
## Attributes of the class are as follows [br]
## [member objectName.health][br]
## [member objectName.defense][br]
## [member objectName.damage][br]
## [member objectName.agility][br]
## [member objectName.saving_throw][br]
## [member objectName.currency_multiplier][br]
## Methods and their assignments [br]
## [method Class.roll_health] [i]50 to 150 health Maybe not inclusive[/i][br]
## [method Class.roll_defense] [i]0.01 to 0.05 inclusive[/i][br]
## [method Class.roll_damage] [i]0.05 to 0.15 inclusive[/i][br]
## [method Class.roll_agility] [i]0.05 to 0.10 inclusive[/i][br]
## [method Class.roll_saving_throw] [i]0.10 to 0.50 inclusive[/i][br]
## [method Class.roll_currency_multiplier] [i]0.8 to 1.2inclusive[/i][br]

class_name Spin
extends RefCounted


var health: float
var defense: float
var damage: float
var agility: float
var saving_throw: float
var currency_multiplier: float

#func get_health() -> float;



# startin_health: float, starting_defense: float, starting_damage: float, starting_agility: float, starting_saving: float, starting_currency: float

# Starting with default values 
func _init() -> void:
	health = 100
	defense = .03
	damage = 10.0
	agility = .10
	saving_throw = .50
	currency_multiplier = 1.0
	
	
	
func spin() -> Spin:
	roll_health()
	roll_defense()
	roll_damage()
	roll_agility()
	roll_saving_throw()
	roll_currency_multiplier()
	return self
	
func attack_spin() -> Spin:
	roll_defense()
	roll_damage()
	roll_agility()
	roll_saving_throw()
	roll_currency_multiplier()
	return self
	
	
func get_health() -> float:
	return self.health	
	
func roll_health() -> Spin:
	health = randi() % 100 + 50
	return self
	
func roll_defense() -> Spin:
	defense = randf_range(0.01, 0.05)
	return self
	
func roll_damage() -> Spin:
	damage = randf_range(8.0, 12.0)
	return self

func roll_agility() -> Spin:
	agility = randf_range(0.05, 0.10)
	return self
	
func roll_saving_throw() -> Spin:
	saving_throw = randf_range(0.10, 0.50)
	return self
	
func roll_currency_multiplier() -> Spin:
	currency_multiplier = randf_range(0.8, 1.2)
	return self
