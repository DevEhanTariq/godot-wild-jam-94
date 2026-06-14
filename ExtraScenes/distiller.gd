extends Node2D

var TestTubes = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	print(len(TestTubes))

func _on_button_pressed() -> void:
	var InTube = $TestTubeOutline/TestTube
	
	var TubeX = $TestTubeOutline2
	var TubeY = $TestTubeOutline3
	var TubeZ = $TestTubeOutline4

	if InTube.visible and (not $TestTubeOutline2/TestTube.visible) and (not $TestTubeOutline3/TestTube.visible) and (not $TestTubeOutline4/TestTube.visible):
	
		var ChemX = [InTube.CX, 0.0, 0.0]
		var ChemY = [0.0, InTube.CY, 0.0]
		var ChemZ = [0.0, 0.0, InTube.CZ]
	
		TubeX.CX = ChemX[0]
		TubeX.CY = ChemX[1]
		TubeX.CZ = ChemX[2]
	
		TubeY.CX = ChemY[0]
		TubeY.CY = ChemY[1]
		TubeY.CZ = ChemY[2]
	
		TubeZ.CX = ChemZ[0]
		TubeZ.CY = ChemZ[1]
		TubeZ.CZ = ChemZ[2]
	
		TubeX.distill = true
		TubeY.distill = true
		TubeZ.distill = true
	
		TubeX._on_button_pressed()
		TubeY._on_button_pressed()
		TubeZ._on_button_pressed()
	
		TubeX.distill = false
		TubeY.distill = false
		TubeZ.distill = false
	
		TestTubes.erase([InTube.CX, InTube.CY, InTube.CZ])
		InTube.CX = 0.0
		InTube.CY = 0.0
		InTube.CZ = 0.0
		TestTubes.append([0.0, 0.0, 0.0])

	if (not InTube.visible) and ($TestTubeOutline2/TestTube.visible) and ($TestTubeOutline3/TestTube.visible) and ($TestTubeOutline4/TestTube.visible):
		pass
