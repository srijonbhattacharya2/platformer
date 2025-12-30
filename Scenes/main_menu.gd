extends Control


func _on_start_pressed() -> void:
	get_tree().call_deferred("change_scene_to_file", "res://Scenes/game.tscn")


func _on_skin_black_pressed() -> void:
	Global.skin = ("Black")

func _on_skin_deep_blue_pressed() -> void:
	Global.skin = ("Blue")

func _on_skin_red_pressed() -> void:
	Global.skin = ("Red")
