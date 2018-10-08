extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	var _file = File.new()
	_file.open("res://Means/records.json", File.READ)
	var _map = JSON.parse(_file.get_as_text())
	_map = _map.result
	$Map.map(_map['Sinks']['map'])

func _on_object_pressed():
	get_tree().change_scene("res://Scenes/SkinBall.tscn")
	
func _on_hand_pressed():
	get_tree().change_scene("res://Scenes/SkinHand.tscn")

func _on_map_pressed():
	get_tree().change_scene("res://Scenes/SkinMap.tscn")

