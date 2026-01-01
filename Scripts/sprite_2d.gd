extends Sprite2D

func _process(delta):
	var t = Time.get_ticks_msec() * 0.002
	scale.x = cos(t) / 7
