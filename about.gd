extends Control

var toast_speed: float = 0.6

@onready var toast: Label = $Label3 # <-- Copied! label

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://main_menu.tscn")
	
func _on_button_2_pressed() -> void:
	DisplayServer.clipboard_set("Developed and Designed by:
Srijon Bhattacharya

Published by:
AppApex")
	show_toast()


func show_toast() -> void:
	toast.visible = true
	toast.modulate.a = 0.0

	var tween := create_tween()
	tween.tween_property(toast, "modulate:a", 1.0, 0.2 / toast_speed)
	tween.tween_interval(1.0 / toast_speed)
	tween.tween_property(toast, "modulate:a", 0.0, 0.3 / toast_speed)
	tween.tween_callback(func():
		toast.visible = false
	)
