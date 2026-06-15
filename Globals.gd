extends Node

var TestTubes = []
var Selected = 0
var Full = false

func RemoveTestTube():
	Global.TestTubes.remove_at(Selected)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if len(TestTubes) >= 1:
		Global.Full = true
	else:
		Global.Full = false
