extends RigidBody2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	var direction = (get_global_mouse_position() - global_position).normalized()
	apply_central_impulse(direction * 500)

func _on_body_entered(body):
	if body.is_in_group("Pegs"):
		body.on_hit()
		Globals.score += 10
		print(Globals.score)
