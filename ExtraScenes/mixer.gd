extends Node2D

var TestTubes = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	var ChemicalA = $TestTubeOutline/TestTube
	var ChemicalB = $TestTubeOutline2/TestTube
	var NewX = (ChemicalA.CX + ChemicalB.CX)/2
	var NewY = (ChemicalA.CY + ChemicalB.CY)/2
	var NewZ = (ChemicalA.CZ + ChemicalB.CZ)/2
	ChemicalA.CX = NewX
	ChemicalA.CY = NewY
	ChemicalA.CZ = NewZ
	ChemicalB.CX = NewX
	ChemicalB.CY = NewY
	ChemicalB.CZ = NewZ
