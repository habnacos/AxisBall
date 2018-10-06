extends KinematicBody2D

export (int) var speed
signal move
var screensize

func _ready():
	set_process_input(true)
	screensize = get_viewport_rect().size

func _input(event):
	if event is InputEventScreenDrag:
		emit_signal("move")
		position.x = event.position.x

func _process(delta):
	mover_mano(delta)

func mover_mano(delta):
	var velocity = Vector2()
		
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
	position += velocity * delta
	position.x = clamp(position.x, 55, screensize.x)
	position.y = clamp(position.y, 0, screensize.y)