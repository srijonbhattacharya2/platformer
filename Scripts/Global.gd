extends Node

var health = 4
var game_over_triggered := false
var skin = ("Black")

func _process(_delta: float) -> void:
	if health <= 0 and not game_over_triggered:
		game_over_triggered = true
		get_tree().change_scene_to_file("res://Scenes/game_over.tscn")
