extends Position2D

const bullet = preload("res://obj/bullet/bullet.tscn")
var active = false

onready var timer = $Timer

func _process(delta: float) -> void:
	
	if Input.is_action_pressed('cl') and active:
		active = false
		shoot()
		timer.start()


func shoot():
	
	var ins = bullet.instance()
	
	owner.get_parent().add_child(ins)
	
	ins.rot = get_parent().rotation
	ins.position = global_position

func _on_Timer_timeout() -> void:
	active = true
