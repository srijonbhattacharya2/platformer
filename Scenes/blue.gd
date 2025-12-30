extends Sprite2D

func _process(delta: float) -> void:
	if Global.skin == ("Black"):
		visible = false

	if Global.skin == ("Blue"):
		visible = true

	if Global.skin == ("Red"):
		visible = false
