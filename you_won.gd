extends Control




func _on_button_pressed() -> void:
	Global.health = 3
	get_tree().change_scene_to_file("res://main_menu.tscn")
