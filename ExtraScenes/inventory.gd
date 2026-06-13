extends Node2D

var Tubes = {0:"TestTube",
1:"TestTube2",
2:"TestTube3",
3:"TestTube4",
4:"TestTube5",
5:"TestTube6",
6:"TestTube7"
}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	for i in len(Global.TestTubes):
		pass
