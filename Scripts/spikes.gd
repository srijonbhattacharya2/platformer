extends Node2D




func _on_spike_1_body_entered(body: CharacterBody2D) -> void:
	Global.health -= 1
	print(str(Global.health))
