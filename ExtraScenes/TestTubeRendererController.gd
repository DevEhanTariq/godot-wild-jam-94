extends Node

@onready var sprite = $TestTubeBottomLayer/Liquid

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var mat = sprite.material as ShaderMaterial
	mat.set_shader_parameter("tint_color", Color(1.0, 1.0, 1.0, 1.0)) # red


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
