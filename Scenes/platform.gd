extends StaticBody2D

var SPEED = 5
var dir = -1

func _process(delta: float) -> void:
	position.x += SPEED * dir


func _on_area_2d_body_entered(body: Area2D) -> void:
	dir = 1


func _on_area_2d_2_body_entered(body: Area2D) -> void:
	dir = -1
