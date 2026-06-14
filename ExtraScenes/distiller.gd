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
	TubeX.distill = true
	TubeX._on_button_pressed()
	OutTubeX.CX = InTube.CX
	OutTubeX.CY = 0.0
	OutTubeX.CZ = 0.0
	TestTubes.append([OutTubeX.CX, OutTubeX.CY, OutTubeX.CZ, len(TestTubes)])
	
	TubeY.delete = false
	TubeY.distill = true
	TubeY._on_button_pressed()
	OutTubeY.CX = 0.0
	OutTubeY.CY = InTube.CY
	OutTubeY.CZ = 0.0
	TestTubes.append([OutTubeY.CX, OutTubeY.CY, OutTubeY.CZ, len(TestTubes)])
	
	TubeZ.delete = false
	TubeZ.distill = true
	TubeZ._on_button_pressed()
	OutTubeZ.CX = 0.0
	OutTubeZ.CY = 0.0
	OutTubeZ.CZ = InTube.CZ
	TestTubes.append([OutTubeZ.CX, OutTubeZ.CY, OutTubeZ.CZ, len(TestTubes)])
	
	InTube.CX = 0.0
	InTube.CY = 0.0
	InTube.CZ = 0.0
	TestTubes.remove_at(0)
	TestTubes.append([InTube.CX, InTube.CY, InTube.CZ, len(TestTubes)])
