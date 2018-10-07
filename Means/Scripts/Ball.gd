extends Node2D
#					Radius	Sacale	dough
var _baseball = 	[42.5,  0.65,   30]
var _basketball = 	[137.5, 0.45,   100]
var _soccer = 		[110.5, 0.65,   80]

var _shape = CircleShape2D.new()

func _ready():
	add_child(_shape)
	
func new_game(var _ball):
	$AnimatedSprite.animation = _ball
	if _ball == "Baseball":
		$AnimatedSprite.scale = Vector2(_baseball[1], _baseball[1])
		#_shape.ser_ra

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

