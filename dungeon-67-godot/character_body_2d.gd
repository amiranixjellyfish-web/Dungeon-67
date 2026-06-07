extends CharacterBody2D
const SPEED = 3000.0
func _physics_process(_delta):
	var direction = Input.get_axis("move_left", "move_right")
	var direction1 = Input.get_axis("move_up", "move_down")
	velocity.x = direction * SPEED
	velocity.y = direction1 * SPEED
	move_and_slide()
