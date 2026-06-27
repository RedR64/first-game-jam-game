extends Node2D

# Drag the actual combat player node here in the Inspector.
@export var player_path: NodePath

# Set this to the player's starting/max health.
@export var maximum_health: float = 100.0

@onready var health_bar: Range = $HealthBar
@onready var player = get_node(player_path)


func _ready() -> void:
	health_bar.min_value = 0.0
	health_bar.max_value = maximum_health
	
	update_health_bar()


func _process(_delta: float) -> void:
	update_health_bar()


func update_health_bar() -> void:
	var current_health = player.get("health")
	
	if current_health == null:
		push_warning("The assigned player node does not have a health variable.")
		return
	
	health_bar.value = clampf(
		float(current_health),
		health_bar.min_value,
		health_bar.max_value
	)
