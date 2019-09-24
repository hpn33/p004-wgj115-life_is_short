extends Node


var speed := 1000.0
var mx_speed := 200.0
var vel := Vector2()


func _process(delta: float) -> void:
	
	set_force(delta)
	set_movement()
	

func set_movement():
	
	vel = owner.move_and_slide(vel, Vector2.UP)

func set_force(delta):
	
	var dir = owner.dir.dir
	
	if dir.x:
		vel.x += speed * dir.x * delta
		vel.x = clamp(vel.x, -mx_speed, mx_speed)
	else:
		vel.x = int(lerp(vel.x, 0, 5* delta))
	
	
	if dir.y:
		vel.y += speed * dir.y * delta
		vel.y = clamp(vel.y, -mx_speed, mx_speed)
	else:
		vel.y = int(lerp(vel.y, 0, 5* delta))
	
	print(vel)