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
	
	vel.x = set_val(vel.x, dir.x, delta)
	vel.y = set_val(vel.y, dir.y, delta)

func set_val(v, d, delta):
	if d:
		v += speed * d * delta
		v = clamp(v, -mx_speed, mx_speed)
	else:
		v = int(lerp(v, 0, 5* delta))
	
	return v