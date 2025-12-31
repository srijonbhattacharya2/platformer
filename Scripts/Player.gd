extends CharacterBody2D

const SPEED = 700.0
const JUMP_VELOCITY = -800.0
const MAX_JUMPS = 2

var jump_count := 0

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta
	else:
		jump_count = 0  


	if Input.is_action_just_pressed("ui_up") and jump_count < MAX_JUMPS:
		velocity.y = JUMP_VELOCITY
		jump_count += 1

	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
