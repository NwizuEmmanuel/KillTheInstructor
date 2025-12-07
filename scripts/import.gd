extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func handle_loaded_quiz(quiz: Dictionary) -> void:
	var questions = quiz.get("questions", [])
	print("Loaded", questions.size(), "questions!")
	# Here you assign questions to your game’s quiz system


func _on_file_dialog_file_selected(path: String) -> void:
	var file := FileAccess.open(path, FileAccess.READ)

	if file:
		var content := file.get_as_text()
		file.close()

		var json:Dictionary = JSON.parse_string(content)

		if typeof(json) == TYPE_DICTIONARY:
			handle_loaded_quiz(json)
		else:
			push_error("Invalid JSON structure")
	else:
		push_error("Failed to open file: %s" % path)


func _on_button_pressed() -> void:
	$FileDialog.popup_centered()
