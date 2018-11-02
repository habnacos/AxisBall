extends Node

var _object = null

signal move
signal game
signal hand
signal ball
signal map
var _skins
var ball = "Soccer"
var hand = 1

func _ready():
	pass

func ball():
	if _object != null:
		_object.queue_free()
	_object = load("res://Scenes/Ball.tscn")
	_object = _object.instance()
	_object.ball(ball)
	add_child(_object)
	_object.position = $PositionObject.position

func hand():
	$Hand.hand(hand)
	$Hand.show()
	$Hand.position = $PositionHand.position

func map():
	var _file = File.new()
	_file.open("res://Means/records.gd", File.READ)
	_skins = JSON.parse(_file.get_as_text())
	_file.close()
	_skins = _skins.result
	$Map.map(1)

# func save_file(var _object, var _data):
# 	var _file = File.new()
# 	_file.open("res://Means/records.gd", File.WRITE)
# 	_skins['Skins'][_object] = _data
# 	_file.store_var(to_json(_skins))
# 	_file.close()

func _on_Home_pressed():
	get_tree().change_scene("res://Scenes/Main.tscn")

func _on_object_pressed():
	emit_signal("ball")
	
func _on_hand_pressed():
	emit_signal("hand")

func _on_map_pressed():
	emit_signal("map")

func _on_ball1_pressed():
	# save_file('ball', 'Soccer')
	_object.ball("Soccer")
	var ball = "Soccer"
	emit_signal("game")

func _on_ball2_pressed():
	# save_file('ball', 'Soccer2')
	_object.ball("Soccer2")
	ball = "Soccer2"
	emit_signal("game")

func _on_ball3_pressed():
	# save_file('ball', 'Basketball')
	_object.ball("Basketball")
	ball = "Basketball"
	emit_signal("game")

func _on_ball5_pressed():
	# save_file('ball', 'Baseball')
	_object.ball("Baseball")
	ball = "Baseball"
	emit_signal("game")

func _on_indiceB_pressed():
	# save_file('hand', 1)
	$Hand.hand(1)
	hand = 1
	emit_signal("game")

func _on_indiceN_pressed():
	# save_file('hand', 2)
	$Hand.hand(2)
	hand = 2
	emit_signal("game")

func _on_PulgarN_pressed():
	# save_file('hand', 3)
	$Hand.hand(3)
	hand = 3
	emit_signal("game")

func _on_PulgarB_pressed():
	# save_file('hand', 4)
	$Hand.hand(4)
	hand = 4
	emit_signal("game")

func _on_M1_pressed():
	# save_file('map', 1)
	$Map.map(1)
	emit_signal("game")

func _on_M2_pressed():
	# save_file('map', 2)
	$Map.map(2)
	emit_signal("game")

func _on_M3_pressed():
	# save_file('map', 3)
	$Map.map(3)
	emit_signal("game")

func _on_M4_pressed():
	# save_file('map', 4)
	$Map.map(4)
	emit_signal("game")

func _on_M5_pressed():
	# save_file('map', 5)
	$Map.map(5)
	emit_signal("game")

func _on_M6_pressed():
	# save_file('map', 6)
	$Map.map(6)
	emit_signal("game")

func _on_M7_pressed():
	# save_file('map', 7)
	$Map.map(7)
	emit_signal("game")

func _on_M8_pressed():
	# save_file('map', 8)
	$Map.map(8)
	emit_signal("game")

func _on_Hand_move():
	emit_signal("move")
