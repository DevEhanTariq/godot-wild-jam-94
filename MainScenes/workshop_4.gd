extends Node

var win = false

var Xlow = 100
var Xhig = 100
	
var Ylow = 100
var Yhig = 100

var Zlow = 100
var Zhig = 100

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.TestTubes = []
	var Tube1 = $TestTubeRack/TestTubeOutline2
	var Tube2 = $TestTubeRack/TestTubeOutline
	var Tube3 = $TestTubeRack/TestTubeOutline3
	
	######################################
	
	Tube1.CX = 1.0
	Tube1.CY = 0.0
	Tube1.CZ = 0.0
	
	Tube1.distill = true
	Tube1._on_button_pressed()
	Tube1.distill = false
	
	######################################
	
	Tube2.CX = 0.0
	Tube2.CY = 1.0
	Tube2.CZ = 0.0
	
	Tube2.distill = true
	Tube2._on_button_pressed()
	Tube2.distill = false
	
	######################################
	
	Tube3.CX = 0.0
	Tube3.CY = 0.0
	Tube3.CZ = 1.0
	
	Tube3.distill = true
	Tube3._on_button_pressed()
	Tube3.distill = false
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if win:
		print("YAYAYYAYAYA")
		get_tree().change_scene_to_file("res://ExtraScenes/Win.tscn")


func _on_button_pressed() -> void:
	get_tree().reload_current_scene()
