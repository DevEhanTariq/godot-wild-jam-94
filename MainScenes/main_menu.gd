extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.TestTubes = []
	var Tube1 = $TestTubeRack/TestTubeOutline2
	var Tube2 = $TestTubeRack/TestTubeOutline
	
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


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://MainScenes/Workshop1.tscn")
