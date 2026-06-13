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
	var OutTubeX = $TestTubeOutline3/TestTube
	var TubeY = $TestTubeOutline2
	var OutTubeY = $TestTubeOutline2/TestTube
	var TubeZ = $TestTubeOutline4
	var OutTubeZ = $TestTubeOutline4/TestTube
	var InTube = $TestTubeOutline/TestTube
	
	TubeX.delete = false
	TubeX._on_button_pressed()
	OutTubeX.CX = InTube.CX
	OutTubeX.CY = 0.0
	OutTubeX.CZ = 0.0
	
	TubeY.delete = false
	TubeY._on_button_pressed()
	OutTubeY.CX = 0.0
	OutTubeY.CY = InTube.CY
	OutTubeY.CZ = 0.0
	
	TubeZ.delete = false
	TubeZ._on_button_pressed()
	OutTubeZ.CX = 0.0
	OutTubeZ.CY = 0.0
	OutTubeZ.CZ = InTube.CZ
	
	InTube.Opac = 0.0
