extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_singleplayer_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/game.tscn") 



func _on_multiplayer_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/game.tscn")
	GameManager.player_count = 2
