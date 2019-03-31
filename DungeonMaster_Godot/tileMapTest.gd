extends Node2D

onready var map = get_node("map")
onready var info = get_node("info")

func _ready():
	print("xxx")
	set_process_input(true)

func _input(event):
	print("a")
	if Input.is_mouse_button_pressed(1):
		print("b")
		var mouse_pos = get_global_mouse_position()
		var tile = map.world_to_map(mouse_pos)
		var text = "screenPos: %s\ntile: %s" % [mouse_pos, tile]
		info.set_text(text)