extends Control


func _on_exit_pressed() -> void:
	get_tree().quit()

func _on_restart_pressed() -> void:
	await get_tree().create_timer(0.3).timeout
	Global.health = 4
	Global.game_over_triggered = false
	get_tree().call_deferred("change_scene_to_file", "res://Scenes/game.tscn")
