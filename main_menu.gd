extends Control


func _on_button_pressed() -> void:
	$AudioStreamPlayer2.play()
	get_tree().change_scene_to_file("res://Scenes/Game_2.tscn")


func _on_button_2_pressed() -> void:
	$AudioStreamPlayer2.play()
	get_tree().change_scene_to_file("res://about.tscn")


func _on_button_3_pressed() -> void:
	$AudioStreamPlayer2.play()
	get_tree().quit()
