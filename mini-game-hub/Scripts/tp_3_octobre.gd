extends Node2D

const VEHICLE_SCENE: PackedScene = preload("res://Scenes/TP/Vehicle/Vehicle.tscn")

@onready var mouse_input: MouseInput = $MouseInput


func _ready() -> void:
	mouse_input.drag_released.connect(_on_mouse_input_drag_released)


func _on_mouse_input_drag_released(start_position: Vector2, direction: Vector2, speed: float) -> void:
	var vehicle = VEHICLE_SCENE.instantiate()
	vehicle.position = start_position
	vehicle.vehicle_direction = direction
	vehicle.vehicle_speed = speed
	add_child(vehicle)
