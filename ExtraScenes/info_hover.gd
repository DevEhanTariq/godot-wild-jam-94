extends Node2D

var ChemX: float = 0.0
var ChemY: float = 0.0
var ChemZ: float = 0.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var ChemicalX = $ChemicalX
	var ChemicalY = $ChemicalY
	var ChemicalZ = $ChemicalZ
	
	if ChemX == 0.0 and ChemY == 0.0 and ChemZ == 0.0:
		ChemicalX.text = "Black Acid"
		ChemicalY.text = ""
		ChemicalZ.text = ""
	else:
		ChemicalX.text = "Chemical X: " + str(int(ChemX*100))
		ChemicalY.text = "Chemical Y: " + str(int(ChemY*100))
		ChemicalZ.text = "Chemical Z: " + str(int(ChemZ*100))


func _on_area_2d_mouse_entered() -> void:
	visible = true


func _on_area_2d_mouse_exited() -> void:
	visible = false
