extends Node2D

@export var peg_scene: PackedScene

func _ready():
	for marker in get_children():
		if marker is Marker2D:
			spawn_peg(marker.global_position)

func spawn_peg(pos: Vector2):
	var peg = peg_scene.instantiate()
	peg.global_position = pos
	add_child(peg)
