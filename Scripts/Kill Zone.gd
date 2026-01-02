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
	
func _on_spike_3_body_entered(body: CharacterBody2D) -> void:
	Global.health -= 1
	print(str(Global.health))

func _on_rotating_spike_body_entered(body: CharacterBody2D) -> void:
	Global.health -= 1
	print(str(Global.health))

func _on_rotating_spike_2_body_entered(body: CharacterBody2D) -> void:
	Global.health -= 1
	print(str(Global.health))


func _on_spike_4_body_entered(body: CharacterBody2D) -> void:
	Global.health -= 1
	print(str(Global.health))


func _on_empty_area_body_entered(body: CharacterBody2D) -> void:
	Global.health = 0
	print(str(Global.health))


func _on_rotating_spike_3_body_entered(body: CharacterBody2D) -> void:
	Global.health -= 1
	print(str(Global.health))


func _on_spike_5_body_entered(body: CharacterBody2D) -> void:
	Global.health -= 1
	print(str(Global.health))

func _on_spike_6_body_entered(body: CharacterBody2D) -> void:
	Global.health -= 1
	print(str(Global.health))


func _on_lava_2_body_entered(body: CharacterBody2D) -> void:
	Global.health = 0
	print(str(Global.health))


func _on_rotating_spike_4_body_entered(body: CharacterBody2D) -> void:
	Global.health -= 1
	print(str(Global.health))
