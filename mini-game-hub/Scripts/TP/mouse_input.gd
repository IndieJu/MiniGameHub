class_name MouseInput
extends Node

signal drag_released(start_position: Vector2, direction: Vector2, speed: float)

var start_position: Vector2


func _unhandled_input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			start_position = event.position
		else:
			var drag_vector = event.position - start_position
			drag_released.emit(start_position, drag_vector.normalized(), min(drag_vector.length(), 300.0))
