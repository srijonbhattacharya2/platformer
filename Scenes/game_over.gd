extends Control




func _on_exit_pressed() -> void:
	$AudioStreamPlayer2.play()
	get_tree().quit()


func _on_restart_pressed() -> void:
	$AudioStreamPlayer2.play()
	Global.health = 3
	Global.game_over_triggered = false
	get_tree().call_deferred("change_scene_to_file", "res://Scenes/Game_2.tscn")
