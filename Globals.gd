extends Node

var TestTubes = []
var Selected = 0

func RemoveTestTube():
	Global.TestTubes.remove_at(Selected)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
