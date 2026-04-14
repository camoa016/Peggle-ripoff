extends StaticBody2D

var hit = false

func _on_body_entered(body):
	if body.is_in_group("Balls") and !hit:
		hit = true
		queue_free()
