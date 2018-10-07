extends Node

export (PackedScene) var Game
export (PackedScene) var Skins
var game

func _ready():
	pass

#func _process(delta):


func _on_StartButton_pressed():
	get_tree().change_scene_to(Game)


func _on_SkinsButton_pressed():
	get_tree().change_scene_to(Skins)
