extends Node


@onready var level_container = get_tree().current_scene.get_node("LevelContainer")

@onready var levels = {
	0: "res://Scenes/levels/menu.tscn",
	1: "res://Scenes/levels/level_1.tscn",
	2: "res://Scenes/levels/level_2.tscn",
	3: "res://Scenes/levels/level_3.tscn",
	4: "res://Scenes/levels/level_4.tscn"
}

@onready var current_level = null


func _ready() -> void:
	load_level(levels[0])

func load_level(level_path):
	# Remove old level
	if current_level:
		current_level.queue_free()

	# Load new level
	var level_scene = load(level_path)
	current_level = level_scene.instantiate()

	# Add to scene tree
	level_container.add_child(current_level)
