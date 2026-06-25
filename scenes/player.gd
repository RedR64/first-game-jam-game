

class_name Player
extends CharacterBody2D


var comb = Combat.new();
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

	#var enemy = Enemy.new();


	#comb.battle(self, enemy)

	#comb.attack(self, enemy);
	
	
	## Attach stats except health
func attach_stats(spin: Spin) -> void:
	
	defense = spin.defense;
	damage = spin.damage;
	agility = spin.agility;
	saving_throw = spin.saving_throw;
	currency_mult = spin.currency_multiplier;


## Attatch all stats including health
func attach_stats_h(spin: Spin) -> void:
	
	health = spin.health;
	defense = spin.defense;
	damage = spin.damage;
	agility = spin.agility;
	saving_throw = spin.saving_throw;
	currency_mult = spin.currency_multiplier;
	
	
	
	
	
	
	
	
