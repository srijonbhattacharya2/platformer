extends Node

var health = 3
var game_over_triggered := false
var MAX_JUMPS = 2

func _process(delta: float) -> void:
	if health <= 0 and not game_over_triggered:
		game_over_triggered = true
		get_tree().change_scene_to_file("res://Scenes/game_over.tscn")
