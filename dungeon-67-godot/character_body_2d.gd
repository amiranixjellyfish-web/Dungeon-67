extends CharacterBody2D
const SPEED = 3000.0
func _physics_process(delta: float):
	var direction = Input.get_axis("ui_left", "ui_right")
	var direction1 = Input.get_axis("ui_up", "ui_down")
	velocity.x = direction * SPEED
	velocity.y = direction1 * SPEED
	move_and_slide()
