extends OptionButton

func _on_item_selected(index: int) -> void:
	if (index == 0):
		get_tree().change_scene_to_file("res://Scenes/level_1.tscn")
	if (index == 1):
		get_tree().change_scene_to_file("res://Scenes/level_2.tscn")
