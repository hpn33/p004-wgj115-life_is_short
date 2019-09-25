extends RigidBody2D

var rot := 0.0 setget set_force
var speed := Vector2(800,0)

func set_force(value):
	rot = value
	
#	applied_force = speed.rotated(rot)
	apply_central_impulse(speed.rotated(rot))
#	add_central_force(speed.rotated(rot))

func _process(delta: float) -> void:
	
#	add_central_force(speed.rotated(rot))
#	position += speed.rotated(rot) * delta
	pass