extends Control

var toast_speed: float = 0.6

@onready var toast: Label = $Label3 # <-- Copied! label

func _on_button_pressed() -> void:
	$AudioStreamPlayer2.play()
	await get_tree().create_timer(0.3).timeout
	get_tree().change_scene_to_file("res://main_menu.tscn")
	
func _on_button_2_pressed() -> void:
	$AudioStreamPlayer2.play()
	await get_tree().create_timer(0.3).timeout
	OS.shell_open("mailto:appapexlab@gmail.com")
	



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
