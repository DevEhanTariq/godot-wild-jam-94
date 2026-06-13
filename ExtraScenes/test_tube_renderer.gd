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
	
	Info.ChemX = CX * Opac
	Info.ChemY = CY * Opac
	Info.ChemZ = CZ * Opac
	
	var mat = liquid.material as ShaderMaterial
	mat.set_shader_parameter("tint_color", Color(CX * Opac, CY * Opac, CZ * Opac, Opac))
