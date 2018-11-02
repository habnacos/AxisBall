extends RigidBody2D
#					Radius	Sacale	mass
var _baseball = 	[0.65,  0.65,   30]
var _basketball = 	[1.8,   1,   75]
var _soccer = 		[1.8,   0.65,   80]

func _ready():
	pass

func ball(var _ball):
	$AnimatedSprite.animation = _ball
	if _ball == "Baseball":
		$AnimatedSprite.scale = Vector2(_baseball[1], _baseball[1])
		$CollisionShape2D.scale = Vector2(_baseball[0], _baseball[0])
		mass = _baseball[2]
	if _ball == "Basketball":
		$AnimatedSprite.scale = Vector2(_basketball[1], _basketball[1])
		$CollisionShape2D.scale = Vector2(_basketball[0], _basketball[0])
		mass = _basketball[2]
	if _ball == "Soccer" || _ball == "Soccer2":
		$AnimatedSprite.scale = Vector2(_soccer[1], _soccer[1])
		$CollisionShape2D.scale = Vector2(_soccer[0], _soccer[0])
		mass = _soccer[2]

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

