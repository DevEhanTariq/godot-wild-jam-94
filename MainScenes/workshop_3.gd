extends Node

var win = false

var Xlow = 100
var Xhig = 100
	
var Ylow = 0
var Yhig = 0

var Zlow = 0
var Zhig = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.TestTubes = []
	var Tube1 = $TestTubeRack/TestTubeOutline2
	var Tube2 = $TestTubeRack/TestTubeOutline
	var Tube3 = $TestTubeRack/TestTubeOutline3
	
	######################################
	
	Tube1.CX = 1.0
	Tube1.CY = 1.0
	Tube1.CZ = 1.0
	
	Tube1.distill = true
	Tube1._on_button_pressed()
	Tube1.distill = false
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if win:
		print("YAYAYYAYAYA")
		get_tree().change_scene_to_file("res://ExtraScenes/Win.tscn")


func _on_button_pressed() -> void:
	get_tree().reload_current_scene()
