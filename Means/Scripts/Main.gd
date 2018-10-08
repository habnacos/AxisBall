extends Node

export (PackedScene) var Game

func _ready():
	$Map.map(1)

func _on_StartButton_pressed():
	get_tree().change_scene_to(Game)

func _on_SkinsButton_pressed():
	get_tree().change_scene("res://Scenes/SkinBall.tscn")