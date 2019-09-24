extends Node


var dir := Vector2()


func _process(delta: float) -> void:
	
	var r = int(Input.is_action_pressed('ui_right'))
	var l = int(Input.is_action_pressed('ui_left'))
	var u = int(Input.is_action_pressed('ui_up'))
	var d = int(Input.is_action_pressed('ui_down'))
	
	dir.x = r - l
	dir.y = d - u