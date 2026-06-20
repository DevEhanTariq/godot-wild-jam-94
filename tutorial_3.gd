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
	var next = $screen3
	now.visible = false
	next.visible = true


func _on_screen_3_pressed() -> void:
	var now = $screen3
	var next = $screen4
	now.visible = false
	next.visible = true


func _on_screen_4_pressed() -> void:
	var now = $screen4
	var next = $screen5
	now.visible = false
	next.visible = true


func _on_screen_5_pressed() -> void:
	var now = $screen5
	var next = $"."
	now.visible = false
	next.visible = true
