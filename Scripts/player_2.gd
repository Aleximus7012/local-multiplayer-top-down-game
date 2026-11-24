extends CharacterBody2D

@export var speed = 200


func get_input():
	var input_direction = Input.get_vector("left2", "right2", "up2", "down2")
	velocity = input_direction * speed

func _physics_process(delta) -> void:
	# Add the gravity.
	get_input()
	move_and_slide()
