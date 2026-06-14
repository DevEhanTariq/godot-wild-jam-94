extends Node2D

var TestTubes = []
var Selected = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	var Chemical = $TestTubeOutline/TestTube
	Chemical.CX = Chemical.CX*0.8
	Chemical.CY = Chemical.CY*0.8
	Chemical.CZ = Chemical.CZ*0.8
