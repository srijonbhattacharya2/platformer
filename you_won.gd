extends Control




func _on_button_pressed() -> void:
	Global.health = 3
	Global.MAX_JUMPS = 2
	get_tree().change_scene_to_file("res://main_menu.tscn")
