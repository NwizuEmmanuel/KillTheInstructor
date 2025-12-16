extends Control


@onready var exit_game_button = $VBoxContainer/ExitGame
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_exit_game_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/exit_game_confirmation.tscn")


func _on_start_game_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/kill_the_instructor.tscn")
