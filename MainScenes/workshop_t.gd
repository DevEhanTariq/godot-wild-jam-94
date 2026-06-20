extends Node

var win = false
var fail = false

var Xlow = 100
var Xhig = 100
	
var Ylow = 0
var Yhig = 100

var Zlow = 0
var Zhig = 100

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.TestTubes = []
	var Tube1 = $TestTubeRack/TestTubeOutline2
	var Tube2 = $TestTubeRack/TestTubeOutline
	var Tube3 = $TestTubeRack/TestTubeOutline3
	
	######################################
	
	Tube1.CX = randf_range(0.0, 1.0)
	Tube1.CY = randf_range(0.0, 1.0)
	Tube1.CZ = randf_range(0.0, 1.0)
	
	Tube1.distill = true
	Tube1._on_button_pressed()
	Tube1.distill = false
	
	######################################
	
	Tube2.CX = randf_range(0.0, 1.0)
	Tube2.CY = randf_range(0.0, 1.0)
	Tube2.CZ = randf_range(0.0, 1.0)
	
	Tube2.distill = true
	Tube2._on_button_pressed()
	Tube2.distill = false
	
	######################################
	
	Tube3.CX = randf_range(0.0, 1.0)
	Tube3.CY = randf_range(0.0, 1.0)
	Tube3.CZ = randf_range(0.0, 1.0)
	
	Tube3.distill = true
	Tube3._on_button_pressed()
	Tube3.distill = false
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if win:
		$"Next Level".visible = true
	elif fail:
		$Restart.visible = true


func _on_button_pressed() -> void:
	get_tree().reload_current_scene()


func _on_next_level_pressed() -> void:
	get_tree().change_scene_to_file("res://ExtraScenes/Fire.tscn")


func _on_restart_pressed() -> void:
	get_tree().reload_current_scene()
