extends Control


func _on_button_pressed() -> void:
	$AudioStreamPlayer2.play()
	await get_tree().create_timer(0.3).timeout
	get_tree().change_scene_to_file("res://Scenes/Game_2.tscn")


func _on_button_2_pressed() -> void:
	$AudioStreamPlayer2.play()
	await get_tree().create_timer(0.3).timeout
	get_tree().change_scene_to_file("res://about.tscn")


func _on_button_3_pressed() -> void:
	$AudioStreamPlayer2.play()
	await get_tree().create_timer(0.3).timeout
	get_tree().quit()


func _on_button_mouse_entered() -> void:
	$AudioStreamPlayer.play()
