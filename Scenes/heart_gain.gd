extends Area2D


func _on_body_entered(body: CharacterBody2D) -> void:
	if Global.health == 3:
		pass
	else:
		Global.health += 1 
		queue_free()
