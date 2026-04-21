extends StaticBody2D

var hit = false

func on_hit():
	if (!hit):
		hit = true
		queue_free()
