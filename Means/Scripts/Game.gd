extends Node

export (PackedScene) var Ball
var _object
var _time = 0
var _score = 0
var _skins

func _ready():
	var _file = File.new()
	_file.open("res://Means/records.gd", File.READ)
	_skins = JSON.parse(_file.get_as_text())
	_file.close()
	_skins = _skins.result
	$Map.map(_skins['Skins']['map'])
	game_new()

func game_new():
	_time = 0
	_score = 0
	_object = Ball.instance()
	_object.ball(_skins['Skins']['ball'])
	add_child(_object)
	_object.position = $PositionObject.position
	$Hand.hand(_skins['Skins']['hand'])
	$Hand.position = $PositionHand.position
	$TimerScore.start()
	$TimerTime.start()
	$Hud.hide()

func game_over():
	$TimerTime.stop()
	$TimerScore.stop()
	$Hud.show()

func _process(delta):
	if _object.position.y > 1280:
		game_over()

func _on_Hand_move():
	_object.gravity_scale = 50
	_score += .15
	print("a")

func _on_TimerScore_timeout():
	$TimerScore/Score.text = "SCORE: " + str(int(_score)) 

func _on_TimerTime_timeout():
	if _object.gravity_scale != 0:
		_time += 1
		_object.gravity_scale += 2
	$TimerTime/Time.text = "TIME: " + str(_time)

func _on_Area2D_Reset():
	game_new()