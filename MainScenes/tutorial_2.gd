extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$screen1.visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_screen_1_pressed() -> void:
	var now = $screen1
	var next = $screen2
	now.visible = false
	next.visible = true


func _on_screen_2_pressed() -> void:
	var now = $screen2
	var next = $"."
	now.visible = false
	next.visible = true
