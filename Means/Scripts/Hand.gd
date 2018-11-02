extends KinematicBody2D

signal move

func _ready():
	set_process_input(true)
	$H1.hide()
	$H2.hide()
	$H3.hide()
	$H4.hide()
	$C1_2.disabled = true
	$C3_4.disabled = true

func _input(event):
	if event is InputEventScreenDrag:
		if event.position.y <= 1120:
			position.x = event.position.x
			emit_signal("move")

func hand(var hand):
	$C1_2.disabled = true
	$C3_4.disabled = true
	$H1.hide()
	$H2.hide()
	$H3.hide()
	$H4.hide()
	if hand == 1:
		$H1.show()
		$C1_2.disabled = false
	elif hand == 2:
		$H2.show()
		$C1_2.disabled = false
	elif hand == 3:
		$H3.show()
		$C3_4.disabled = false
	elif hand == 4:
		$H4.show()
		$C3_4.disabled = false

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
