extends Node2D

signal Reset

func _ready():
	pass

func _on_Button_pressed():
	emit_signal("Reset")
