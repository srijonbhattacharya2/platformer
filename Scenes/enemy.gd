extends Area2D

var dir = -1
var SPEED = 6


func _process(delta: float) -> void:
	position.x += dir * SPEED
