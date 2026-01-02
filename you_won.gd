extends Control




func _on_button_pressed() -> void:
	await get_tree().create_timer(0.3).timeout
	$AudioStreamPlayer2.play()
	Global.health = 3
	get_tree().change_scene_to_file("res://main_menu.tscn")
