extends Sprite2D

func _process(delta: float) -> void:
	if Global.skin == ("Black"):
		visible = true

	if Global.skin == ("Blue"):
		visible = false

	if Global.skin == ("Red"):
		visible = false
