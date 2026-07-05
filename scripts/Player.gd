extends CharacterBody2D

# Movement variables
const SPEED = 300.0
const JUMP_FORCE = -400.0
const GRAVITY = 980.0

func _physics_process(delta):
	# Gravity
	velocity.y += GRAVITY * delta
	
	# Horizontal movement
	var direction = Input.get_axis("ui_left", "ui_right")
	velocity.x = direction * SPEED
	
	# Jumping
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_FORCE
	
	# Move the player
	move_and_slide()
	
	# Simple animation direction (optional for later)
	if direction != 0:
		$Sprite2D.scale.x = sign(direction)
