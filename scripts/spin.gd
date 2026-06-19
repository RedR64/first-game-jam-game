
class_name Spin
extends RefCounted


var health: float
var defense: float
var damage: float
var agility: float
var saving_throw: float
var currency_multiplier: float




# startin_health: float, starting_defense: float, starting_damage: float, starting_agility: float, starting_saving: float, starting_currency: float

# Starting with default values 
func _init() -> void:
	health = 100
	defense = .03
	damage = .10
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
	
	
	
	
func roll_health() -> Spin:
	health = randi() % 100 + 50
	return self
	
func roll_defense() -> Spin:
	defense = randf_range(0.01, 0.05)
	return self
	
func roll_damage() -> Spin:
	damage = randf_range(0.05, 0.15)
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
