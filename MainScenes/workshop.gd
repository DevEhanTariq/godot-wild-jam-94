extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.TestTubes = []
	Global.TestTubes.append([randf_range(0.7,1.0), randf_range(0.0,1.0), randf_range(0.0,1.0)])
	Global.TestTubes.append([randf_range(0.0,1.0), randf_range(0.7,1.0), randf_range(0.0,1.0)])
	Global.TestTubes.append([randf_range(0.0,1.0), randf_range(0.0,1.0), randf_range(0.7,1.0)])


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	get_tree().reload_current_scene()
