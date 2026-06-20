extends Node

var win = false
var fail = false

var Xlow = 50
var Xhig = 50
	
var Ylow = 50
var Yhig = 50

var Zlow = 50
var Zhig = 50

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.TestTubes = []
	var Tube1 = $TestTubeRack/TestTubeOutline2
	var Tube2 = $TestTubeRack/TestTubeOutline
	
	######################################
	
	Tube1.CX = 1.0
	Tube1.CY = 1.0
	Tube1.CZ = 1.0
	
	Tube1.distill = true
	Tube1._on_button_pressed()
	Tube1.distill = false
	
	######################################
	
	Tube2.CX = 0.0
	Tube2.CY = 0.0
	Tube2.CZ = 0.0
	
	Tube2.distill = true
	Tube2._on_button_pressed()
	Tube2.distill = false
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if win:
		$"Next Level".visible = true
	elif fail:
		$Restart.visible = true


func _on_button_pressed() -> void:
	get_tree().reload_current_scene()


func _on_next_level_pressed() -> void:
	get_tree().change_scene_to_file("res://MainScenes/Workshop3.tscn")


func _on_restart_pressed() -> void:
	get_tree().reload_current_scene()
