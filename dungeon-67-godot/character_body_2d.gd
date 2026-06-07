extends CharacterBody2D

const SPEED = 200.0

func _physics_process(_delta):
	var direction = Input.get_axis("move_left", "move_right")
	var direction1 = Input.get_axis("move_up", "move_down")
	velocity.x = direction * SPEED
	velocity.y = direction1 * SPEED
	move_and_slide()
	
	if Input.is_action_just_pressed("interact"):
		_try_harvest()

func _try_harvest():
	var resources = get_tree().get_nodes_in_group("resources")
	for res in resources:
		if global_position.distance_to(res.global_position) < 100:
			res.hit()
			break
