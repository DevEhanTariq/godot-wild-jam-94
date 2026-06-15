extends Node2D

var TestTubes = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_button_pressed() -> void:
	var InTube = $TestTubeOutline/TestTube
	var Tube = $TestTubeOutline
	
	var TubeX = $TestTubeOutline2
	var TubeY = $TestTubeOutline3
	var TubeZ = $TestTubeOutline4
	
	var InTubeX = $TestTubeOutline2/TestTube
	var InTubeY = $TestTubeOutline3/TestTube
	var InTubeZ = $TestTubeOutline4/TestTube

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
		var NewChemX = InTubeX.CX + InTubeY.CX + InTubeZ.CX
		var NewChemY = InTubeX.CY + InTubeY.CY + InTubeZ.CY
		var NewChemZ = InTubeX.CZ + InTubeY.CZ + InTubeZ.CZ
		
		var NewChem = [NewChemX, NewChemY, NewChemZ]
		var NewNewChem = []
		
		for Chem in NewChem:
			if Chem > 1.0:
				NewNewChem.append(1.0)
			else:
				NewNewChem.append(Chem)
				
		Tube.CX = NewNewChem[0]
		Tube.CY = NewNewChem[1]
		Tube.CZ = NewNewChem[2]
		
		Tube.distill = true
		Tube._on_button_pressed()
		Tube.distill = false	
		
		TestTubes.erase([InTubeX.CX, InTubeX.CY, InTubeX.CZ])
		InTubeX.CX = 0.0
		InTubeX.CY = 0.0
		InTubeX.CZ = 0.0
		TestTubes.append([0.0, 0.0, 0.0])
		
		TestTubes.erase([InTubeY.CX, InTubeY.CY, InTubeY.CZ])
		InTubeY.CX = 0.0
		InTubeY.CY = 0.0
		InTubeY.CZ = 0.0
		TestTubes.append([0.0, 0.0, 0.0])
		
		TestTubes.erase([InTubeZ.CX, InTubeZ.CY, InTubeZ.CZ])
		InTubeZ.CX = 0.0
		InTubeZ.CY = 0.0
		InTubeZ.CZ = 0.0
		TestTubes.append([0.0, 0.0, 0.0])
		
