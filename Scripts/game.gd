# Main.gd
extends Node2D

@export var player_scene: PackedScene = preload("res://Scenes/Player.tscn")
@onready var player_container = $PlayerContainer
@onready var spawn_points = $SpawnPoints

func _ready() -> void:
	spawn_players()

func spawn_players() -> void:
	# Get spawn positions from your child nodes (make sure you have at least 2 Marker2D/Node3D children)
	var spawns = spawn_points.get_children()
	
	# Loop based on the player count from the GameManager
	for i in range(GameManager.player_count):
		var player = player_scene.instantiate()
		
		# Assign a unique name or ID
		player.name = "Player" + str(i + 1)
		
		# Position the player if spawn points exist
		if i < spawns.size():
			player.global_position = spawns[i].global_position
			
		# Add the player to the scene tree
		player_container.add_child(player)
		
		# Optional: Configure inputs per player (e.g., Player 1 uses WASD, Player 2 uses Arrow keys)
		if player.has_method("set_player_index"):
			player.set_player_index(i + 1)
