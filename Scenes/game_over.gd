extends Control




func _on_exit_pressed() -> void:
	$AudioStreamPlayer2.play()
	await get_tree().create_timer(0.3).timeout
	get_tree().quit()


func _on_restart_pressed() -> void:
	$AudioStreamPlayer2.play()
	await get_tree().create_timer(0.3).timeout
	Global.health = 3
	Global.game_over_triggered = false
	get_tree().call_deferred("change_scene_to_file", "res://Scenes/Game_2.tscn")
