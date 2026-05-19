extends Node2D
var total_balls = 10

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func shoot_ball():
	if(total_balls > 0):
		var ball = Globals.ball_scene.instantiate()
		add_child(ball)
		ball.add_to_group("Balls")
		ball.reparent(get_tree().current_scene)
		total_balls -= 1
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var mouse_pos = get_global_mouse_position()
	look_at(mouse_pos)
	
func _input(event):
	if event is InputEventMouseButton and event.pressed:
		if event.button_index == MOUSE_BUTTON_LEFT :
			if (get_tree().get_nodes_in_group("Balls").size() < 1):
				shoot_ball()
