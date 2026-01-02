extends CharacterBody2D

const SPEED = 700.0
const JUMP_VELOCITY = -850.0
const MAX_JUMPS = 2

var jumps_left := MAX_JUMPS

func _physics_process(delta: float) -> void:
	# Gravity
	if not is_on_floor():
		velocity += get_gravity() * delta
	else:
		# Reset jumps when touching the floor
		jumps_left = MAX_JUMPS

	# Jump (single + double)
	if Input.is_action_just_pressed("ui_up") and jumps_left > 0:
		velocity.y = JUMP_VELOCITY
		jumps_left -= 1

	# Horizontal movement
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
