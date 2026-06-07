extends StaticBody2D

@export var resource_type: String = "crystal"
@export var health: int = 3

signal harvested(type, amount)

func _ready():
	add_to_group("resources")

func hit():
	health -= 1
	modulate = Color(1, 0.5, 0.5)
	if health <= 0:
		harvested.emit(resource_type, 1)
		queue_free()
