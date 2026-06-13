extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	var Outline = $Button
	var TestTube = $TestTube
	var TestTubeLiquid = $TestTube/TestTubeBottomLayer/Liquid
	
	var mat = TestTubeLiquid.material as ShaderMaterial
	mat.set_shader_parameter("tint_color", Color(randf_range(0.0, 1.0), randf_range(0.0, 1.0), randf_range(0.0, 1.0), 1.0))
	
	Outline.visible = false
	TestTube.visible = true
