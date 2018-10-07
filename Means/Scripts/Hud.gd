extends Node2D

signal Reset

func _ready():
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func _on_Button_pressed():
	emit_signal("Reset")

func _on_Home_pressed():
	get_tree().change_scene("res://Scenes/Main.tscn")
