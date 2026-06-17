extends Node2D

var down = true
var TestTubes = []
var InvTubes = []

var Xlow = 0
var Xhig = 0

var Ylow = 0
var Yhig = 0

var Zlow = 0
var Zhig = 0

@onready var x = $InfoHover/ChemicalX
@onready var y = $InfoHover/ChemicalY
@onready var z = $InfoHover/ChemicalZ

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	
func CheckWin():
	var outline = $TestTubeOutline/TestTube
	if (outline.CX >= Xlow/100 and outline.CX <= Xhig/100) and (outline.CY >= Ylow/100 and outline.CY <= Yhig/100) and (outline.CZ >= Zlow/100 and outline.CZ <= Zhig/100):
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
	x.text = str(Xlow) + " < X < " + str(Xhig)
	y.text = str(Ylow) + " < Y < " + str(Yhig)
	z.text = str(Zlow) + " < Z < " + str(Zhig)
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
