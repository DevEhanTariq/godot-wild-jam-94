extends Node2D

var CX = 0.0
var CY = 0.0
var CZ = 0.0
var Opac = 1.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var Info = $InfoHover
	var liquid = $TestTubeBottomLayer/Liquid
	
	Info.ChemX = CX
	Info.ChemY = CY
	Info.ChemZ = CZ
	
	var mat = liquid.material as ShaderMaterial
	mat.set_shader_parameter("tint_color", Color(CX * Opac, CY * Opac, CZ * Opac, Opac))


func _on_area_2d_mouse_entered() -> void:
	var Outline = $TestTubeBottomLayer/Liquid/TestTubeTopLayer/Outline
	Outline.visible = true

func _on_area_2d_mouse_exited() -> void:
	var Outline = $TestTubeBottomLayer/Liquid/TestTubeTopLayer/Outline
	Outline.visible = false

func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			var CurrentInv = get_parent().get_parent()
			CurrentInv.TestTubes.erase([CX,CY,CZ])
			Global.TestTubes.append([CX, CY, CZ])
			get_parent().visible = true
			get_parent().get_child(0).visible = true
			visible = false
