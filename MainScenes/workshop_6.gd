extends Node

var win = false

var Xlow = 50
var Xhig = 90
	
var Ylow = 90
var Yhig = 100

var Zlow = 50
var Zhig = 90

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.TestTubes = []
	var Tube1 = $TestTubeRack/TestTubeOutline2
	var Tube2 = $TestTubeRack/TestTubeOutline
	var Tube3 = $TestTubeRack/TestTubeOutline3
	
	######################################
	
	Tube1.CX = randf_range(0.91, 1.0)
	Tube1.CY = randf_range(0.9, 1.0)
	Tube1.CZ = randf_range(0.91, 1.0)
	
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
