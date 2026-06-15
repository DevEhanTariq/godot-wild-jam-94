extends Node2D

var down = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	if down:
		position.y = -1700
		down = false
	else:
		position.y = -2500
		down = true
