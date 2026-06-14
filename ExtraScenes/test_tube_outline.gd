extends Node2D

var delete = true
var distill = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	if not distill:
		if len(Global.TestTubes) != 0:
			var Outline = $Button
			var TestTube = $TestTube
			var localInventory = get_parent()
		
			localInventory.TestTubes.append(Global.TestTubes[Global.Selected])
		
			if delete:
				Global.RemoveTestTube()
	
			TestTube.CX = localInventory.TestTubes[-1][0]
			TestTube.CY = localInventory.TestTubes[-1][1]
			TestTube.CZ = localInventory.TestTubes[-1][2]
	
	
			Outline.visible = false
			TestTube.visible = true
	if distill:
		var Outline = $Button
		var TestTube = $TestTube
		Outline.visible = false
		TestTube.visible = true
