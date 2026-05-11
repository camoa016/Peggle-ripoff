extends Button


@onready var buttons = $"../LevelButtons"
var showLevels = false

func _on_pressed() -> void:
	if (!showLevels):
		buttons.show()
		showLevels = true
		text = "back"
	
	elif (showLevels):
		buttons.hide()
		showLevels = false
		text = "levels"
	
