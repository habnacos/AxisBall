extends Node

var _skins

func _ready():
	var _file = File.new()
	_file.open("res://Means/records.gd", File.READ)
	_skins = JSON.parse(_file.get_as_text())
	_file.close()
	_skins = _skins.result
	$Map.map(_skins['Skins']['map'])

func save_file(var _object, var _data):
	var _file = File.new()
	_file.open("res://Means/records.gd", File.WRITE)
	_skins['Skins'][_object] = _data
	_file.store_var(to_json(_skins))
	_file.close()

func _on_Home_pressed():
	get_tree().change_scene("res://Scenes/Main.tscn")

func _on_object_pressed():
	get_tree().change_scene("res://Scenes/SkinBall.tscn")
	
func _on_hand_pressed():
	get_tree().change_scene("res://Scenes/SkinHand.tscn")

func _on_map_pressed():
	get_tree().change_scene("res://Scenes/SkinMap.tscn")

func _on_ball1_pressed():
	save_file('ball', 'Soccer')

func _on_ball2_pressed():
	save_file('ball', 'Soccer2')

func _on_ball3_pressed():
	save_file('ball', 'Basketball')

func _on_ball5_pressed():
	save_file('ball', 'Baseball')

func _on_indiceB_pressed():
	save_file('hand', 1)
	
func _on_indiceN_pressed():
	save_file('hand', 2)

func _on_PulgarN_pressed():
	save_file('hand', 3)

func _on_PulgarB_pressed():
	save_file('hand', 4)

func _on_M1_pressed():
	save_file('map', 1)

func _on_M2_pressed():
	save_file('map', 3)

func _on_M3_pressed():
	save_file('map', 4)

func _on_M5_pressed():
	save_file('map', 5)

func _on_M6_pressed():
	save_file('map', 6)

func _on_M7_pressed():
	save_file('map', 7)

func _on_M8_pressed():
	save_file('map', 8)