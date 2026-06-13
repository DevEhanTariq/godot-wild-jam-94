extends Node2D

var TestTubes = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	var TubeX = $TestTubeOutline3
	var TubeY = $TestTubeOutline2
	var TubeZ = $TestTubeOutline4
	var InTube = $TestTubeOutline/TestTube
	
	TubeX.delete = false
	TubeX._on_button_pressed()
