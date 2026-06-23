class_name Enemy
extends CharacterBody2D

var spinVars = Spin.new();
var health: float
var defense: float
var damage: float
var agility: float
var saving_throw: float
var currency_mult: float




func _init() -> void:
	
	spinVars = spinVars.spin();
	
	health = spinVars.health;
	defense = spinVars.defense;
	damage = spinVars.damage;
	agility = spinVars.agility;
	saving_throw = spinVars.saving_throw;
	currency_mult = spinVars.currency_multiplier;
