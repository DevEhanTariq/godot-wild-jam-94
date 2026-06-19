extends Node2D

var down = true
var TestTubes = []
var InvTubes = []

@onready var x = $InfoHover/ChemicalX
@onready var y = $InfoHover/ChemicalY
@onready var z = $InfoHover/ChemicalZ

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

func CheckWin():
	if len(TestTubes) == 1:
		var par = get_parent()
		var outline = $TestTubeOutline/TestTube
		print(outline.CX, outline.CY, outline.CZ)
		if round(outline.CX*100) >= par.Xlow:
			if round(outline.CX*100) <= par.Xhig:
				if round(outline.CY*100) >= par.Ylow:
					if round(outline.CY*100) <= par.Yhig:
						if round(outline.CZ*100) >= par.Zlow:
							if round(outline.CZ*100) <= par.Xhig:
								get_parent().win = true
								Global.level += 1
		
func delete():
	for j in InvTubes:
		remove_child(j)
	InvTubes = []
	
func ShowInv():
	var liquid = $TestTube/TestTubeBottomLayer/Liquid
	var mat = liquid.material as ShaderMaterial
	for i in len(Global.TestTubes):
		mat.set_shader_parameter("tint_color", Color(Global.TestTubes[i][0], Global.TestTubes[i][1], Global.TestTubes[i][2], 1.0))
		
		var sibling = $TestTube.duplicate()
		InvTubes.append(sibling)
		var Tube = InvTubes[-1]
		
		Tube.position.y = 350
		Tube.position.x = Tube.position.x + (250 * i) - 200
		
		add_child(Tube)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var par = get_parent()
	x.text = str(par.Xlow) + " < X < " + str(par.Xhig)
	y.text = str(par.Ylow) + " < Y < " + str(par.Yhig)
	z.text = str(par.Zlow) + " < Z < " + str(par.Zhig)
	delete()
	ShowInv()

func _on_button_pressed() -> void:
	if down:
		position.y = -1000
		down = false
	else:
		position.y = -2500
		down = true


func _on_button_2_pressed() -> void:
	CheckWin()
