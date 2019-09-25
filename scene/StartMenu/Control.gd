extends Control




func _on_Play_pressed() -> void:
	get_tree().change_scene("res://scene/L1/L1.tscn")


func _on_Exit_pressed() -> void:
	get_tree().quit()
