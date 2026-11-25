# Player.gd
extends CharacterBody2D

var player_index: int = 1

func set_player_index(index: int) -> void:
	player_index = index

func _physics_process(delta: float) -> void:
	var direction := Vector2.ZERO
	
	# Map different controls depending on whether it's Player 1 or Player 2
	if player_index == 1:
		direction.x = Input.get_axis("left", "right")
		direction.y = Input.get_axis("up", "down")
	else:
		direction.x = Input.get_axis("left2", "right2")
		direction.y = Input.get_axis("up2", "down2")
		
	velocity = direction * 300.0
	move_and_slide()
