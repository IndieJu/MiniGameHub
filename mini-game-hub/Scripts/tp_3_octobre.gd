extends Node2D


	
@onready var mouse_input: MouseInput = $MouseInput


func _ready() -> void:
	mouse_input.drag_released.connect(_on_mouse_input_drag_released)


func _on_mouse_input_drag_released(direction: Vector2, speed: float) -> void:
	print("Direction: ", direction, " | Speed: ", speed)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	
	
	pass
