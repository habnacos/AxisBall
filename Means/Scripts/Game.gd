extends Node

var _time = 0
var _score = 0
var _skins
var _isGame = true

func _ready():
	set_process_input(true)
	# var _file = File.new()
	# _file.open("res://Means/records.gd", File.READ)
	# _skins = JSON.parse(_file.get_as_text())
	# _file.close()
	# _skins = _skins.result
	# $Map.map(_skins['Skins']['map'])	
	$SkinMap.map()
	$AudioStreamPlayer.play()
	game_new()

#func _input(event):
#	if event is inputeventscreentouch:
#		if event.position.y <= 1200:
#			$credits.hide()

func game_new():
	$Skins.show()
	_time = 0
	_score = 0
	$SkinBall.ball()
	$SkinHand.hand()
	$TimerScore.start()
	$TimerTime.start()
	$Hud.hide()

func game_over():
	$TimerTime.stop()
	$TimerScore.stop()
	$Hud.show()

func _process(delta):
	if $SkinBall._object.position.y > 1280:
		game_over()

func _on_Hand_move():
	if _isGame:
		$SkinBall._object.gravity_scale = 50
		_score += .15
		$Skins.hide()

func _on_TimerScore_timeout():
	$TimerScore/Score.text = "SCORE: " + str(int(_score)) 

func _on_TimerTime_timeout():
	if $SkinBall._object.gravity_scale != 0:
		_time += 1
		$SkinBall._object.gravity_scale += 2
	$TimerTime/Time.text = "TIME: " + str(_time)

func _on_Area2D_Reset():
	game_new()

func _on_SkinsButton_pressed():
	print("Skins Maps")
	$SkinBall._object.hide()
	$SkinBall/Menu.show()
	$SkinHand/Hand.hide()
	_isGame = false
	$SkinBall._object.hide()
	$Skins.hide()

func _on_SkinMap_game():
	_isGame = true
	$SkinMap/Menu.hide()
	$SkinBall/Menu.hide()
	$SkinHand/Menu.hide()
	$SkinHand/Hand.show()
	$SkinBall._object.show()
	$Skins.show()

func _on_SkinMap_ball():
	$SkinMap/Menu.hide()
	$SkinBall/Menu.show()
	$SkinHand/Menu.hide()
	_isGame = false
	$SkinBall._object.hide()
	$Skins.hide()

func _on_SkinMap_hand():
	$SkinMap/Menu.hide()
	$SkinBall/Menu.hide()
	$SkinHand/Menu.show()
	_isGame = false
	$SkinBall._object.hide()
	$Skins.hide()

func _on_SkinMap_map():
	$SkinMap/Menu.show()
	$SkinBall/Menu.hide()
	$SkinHand/Menu.hide()
	_isGame = false
	$SkinBall._object.hide()
	$Skins.hide()

func _on_SoundButton_pressed():
	$AudioStreamPlayer.stop()
	$Skins/SoundButton.hide()
	$Skins/SoundButton2.show()

func _on_SoundButton2_pressed():
	$AudioStreamPlayer.play()
	$Skins/SoundButton.show()
	$Skins/SoundButton2.hide()

func _on_CreditsButton_pressed():
	$Credits.popup()