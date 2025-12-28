extends Node2D




func _on_spike_1_body_entered(body: CharacterBody2D) -> void:
	Global.health -= 1
	print(str(Global.health))


func _on_lava_body_entered(body: CharacterBody2D) -> void:
	Global.health = 0
	print(str(Global.health))


func _on_spike_2_body_entered(body: Node2D) -> void:
	Global.health -= 1
	print(str(Global.health))
