extends Area2D




func _on_event_body_entered(body: PhysicsBody2D) -> void:
	
	if body.is_in_group('player'):
		get_tree().change_scene("res://scene/L2/L2.tscn")
