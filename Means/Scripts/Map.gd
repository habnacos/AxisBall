extends StaticBody2D

func _ready():
	$Map.hide()
	$Map2.hide()
	$Map3.hide()
	$Map4.hide()
	$Map5.hide()
	$Map6.hide()
	$Map7.hide()
	$Map8.hide()

func map(var map):
	if map == 1:
		$Map.show()
	if map == 2:
		$Map2.show()
	if map == 3:
		$Map3.show()
	if map == 4:
		$Map4.show()
	if map == 5:
		$Map5.show()
	if map == 6:
		$Map6.show()
	if map == 7:
		$Map7.show()
	if map == 8:
		$Map8.show()