extends Node

var health = 3
var game_over_triggered : bool = false
var s_h = 0
var score = 0

# Prevent loading multiple times
var _loaded_once := false

const SAVE_PATH := "user://savegame.save"

func _ready():
	if _loaded_once:
		return

	_loaded_once = true
	load_game()
	print("Loaded score:", score)

func save_game():
	var file = FileAccess.open(SAVE_PATH, FileAccess.WRITE)
	if file == null:
		return

	file.store_var({
		"score": score
	})
	file.flush() # VERY IMPORTANT
	file.close()

func load_game():
	if not FileAccess.file_exists(SAVE_PATH):
		print("No save file found")
		return

	var file = FileAccess.open(SAVE_PATH, FileAccess.READ)
	if file == null:
		return

	var data = file.get_var()
	file.close()

	score = data.get("score", 0)

func add_score(value: int):
	score += value
	save_game()
	print("Score saved:", score)

func _process(delta: float) -> void:
	if health == 0 and not game_over_triggered:
		game_over_triggered = true
		save_game()
		get_tree().change_scene_to_file("res://Scenes/game_over.tscn")

	if health == -1 and not game_over_triggered:
		game_over_triggered = true
		save_game()
		get_tree().change_scene_to_file("res://Scenes/poision popup.tscn")

func _notification(what):
	if what == NOTIFICATION_WM_CLOSE_REQUEST:
		save_game()
		get_tree().quit()
