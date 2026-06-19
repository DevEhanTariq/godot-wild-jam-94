extends Node

var win = false

var Xlow = randi_range(0, 50)
var Xhig = Xlow + 20
	
var Ylow = randi_range(0, 50)
var Yhig = Ylow + 20

var Zlow = randi_range(0, 50)
var Zhig = Zlow + 20

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.TestTubes = []
	var Tube1 = $TestTubeRack/TestTubeOutline2
	var Tube2 = $TestTubeRack/TestTubeOutline
	var Tube3 = $TestTubeRack/TestTubeOutline3
	
	######################################
	
	Tube1.CX = randf_range(0.7, 1.0)
	Tube1.CY = randf_range(0.7, 1.0)
	Tube1.CZ = randf_range(0.7, 1.0)
	
	Tube1.distill = true
	Tube1._on_button_pressed()
	Tube1.distill = false
	
	######################################
	
	Tube2.CX = randf_range(0.7, 1.0)
	Tube2.CY = randf_range(0.7, 1.0)
	Tube2.CZ = randf_range(0.7, 1.0)
	
	Tube2.distill = true
	Tube2._on_button_pressed()
	Tube2.distill = false
	
	######################################
	
	Tube3.CX = randf_range(0.7, 1.0)
	Tube3.CY = randf_range(0.7, 1.0)
	Tube3.CZ = randf_range(0.7, 1.0)
	
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
