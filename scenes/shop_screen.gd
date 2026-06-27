extends Node2D


var picture = ["banana","black_hole","cursor","dagger","milky_way","not_a_familiar_sword","paper_clip_remover","pencil_sharpener","shuriken","spin_top","tape_roller"]
var topText = ["Banana","Black Hole","Cursor","Pocket Knife","Milky Way","A Sword","Paper Clip Remover","Pencil Sharpener","Shuriken","Spin Top","Tape Roller"]
var bottomText = ["From your lunch box... wait...","Now how does a child get a hold of this?!","Uh...","","A galaxy that fits in the palm of my hand..?"
,"A sword from a popular game","Normal Office Item","You want me to throw this..?","Now why does a child have such a dangerous weapon?","Your average spinner","Tape, but rolls"]

func _init() -> void:
	shop_item_set()
	
	
	
func shop_item_set():
	var shop_item_num_one = randi_range(0, 10)
	print(picture[shop_item_num_one] + ":" + str(shop_item_num_one))
	print(topText[shop_item_num_one])
	print(bottomText[shop_item_num_one])
	#var texture = load("res://art/weapons/"+picture[shop_item_num_one]+".png")
	#$shop_item1/shop_item1/Weapon.texture = texture
	#$shop_item1/Label.text = topText[shop_item_num_one]
	#$shop_item1/Label2.text = bottomText[shop_item_num_one]
	
	var shop_item_num_two = randi_range(0, 10)
	#var texture2 = load("res://"+picture[shop_item_num_two]+".png")
	print(picture[shop_item_num_two] + ":" + str(shop_item_num_two))
	#$shop_item2/shop_item2.texture = texture2
	#$shop_item2/Label.text = topText[shop_item_num_two]
	#$shop_item2/Label2.text = bottomText[shop_item_num_two]
	
	var shop_item_num_three = randi_range(0, 10)
	#var texture3 = load("res://"+picture[shop_item_num_three]+".png")
	print(picture[shop_item_num_three] + ":" + str(shop_item_num_three))
	#$shop_item3/shop_item3.texture = texture3
	#$shop_item3/Label.text = topText[shop_item_num_three]
	#$shop_item3/Label2.text = bottomText[shop_item_num_three]


func _on_shop_exit_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event.is_action_pressed("left_click"):
		shop_exit()

func shop_exit():
	get_tree().root.remove_child(self)


func _on_shop_button_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("left_click"):
		main_focus(1)

func main_focus(selected):
	if selected == 1:
		$focused_shop_item/focused_shop_item1.visible = true
		$focused_shop_item/focused_shop_item2.visible = false
		$focused_shop_item/focused_shop_item3.visible = false
	elif selected == 2:
		$focused_shop_item/focused_shop_item1.visible = false
		$focused_shop_item/focused_shop_item2.visible = true
		$focused_shop_item/focused_shop_item3.visible = false
	elif selected == 3:
		$focused_shop_item/focused_shop_item1.visible = false
		$focused_shop_item/focused_shop_item2.visible = false
		$focused_shop_item/focused_shop_item3.visible = true
	


func _on_shop_button_2_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("left_click"):
		main_focus(2)


func _on_shop_button_3_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("left_click"):
		main_focus(3)
