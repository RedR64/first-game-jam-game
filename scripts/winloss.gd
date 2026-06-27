class_name winloss
extends Node2D

func _ready() -> void:
	print(self.get_children())

func loss():
	var next_scene = preload("res://main_menu.tscn").instantiate()
	var current_scene = self
	get_tree().root.add_child(next_scene)
	get_tree().current_scene = next_scene
	get_tree().root.remove_child(current_scene)
	
func win():
	if not self.is_node_ready():
		await self.ready
	var find = self.get_children()	
	print("find:" + str(self) + str(find))
	
	#var shop_button = get_node(find[0])
	#shop_button.visible = false
	#var wheel_collision = get_node(find[1] + "/Area2D/CollisionShape2D")
	#wheel_collision.visible = false
