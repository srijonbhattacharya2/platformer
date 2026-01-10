extends Area2D



func _on_body_entered(body: CharacterBody2D) -> void:
	Global.add_score(1)
	print (str(Global.score))
	queue_free()
