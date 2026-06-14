extends Node

var TestTubes = []
var Selected = 0

func RemoveTestTube():
	Global.TestTubes.remove_at(Selected)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.TestTubes.append([randf_range(0.7,1.0), randf_range(0.7,1.0), randf_range(0.7,1.0)])
	Global.TestTubes.append([randf_range(0.7,1.0), randf_range(0.0,1.0), randf_range(0.0,1.0)])
	Global.TestTubes.append([randf_range(0.0,1.0), randf_range(0.7,1.0), randf_range(0.0,1.0)])
	Global.TestTubes.append([randf_range(0.0,1.0), randf_range(0.0,1.0), randf_range(0.7,1.0)])

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	print(len(Global.TestTubes))
