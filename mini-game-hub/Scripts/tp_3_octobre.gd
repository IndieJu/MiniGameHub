extends Node2D

@onready var blue_ship_01: Sprite2D = $BlueShip01
@onready var green_ship_01: Sprite2D = $GreenShip01

var linear_speed_blue_ship: float = 100
var linear_speed_green_ship: float = 20

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	
	blue_ship_01.position += Vector2(linear_speed_blue_ship , 0) * delta
	green_ship_01.position += Vector2(0 , linear_speed_green_ship) * delta 
	
	
	#pass
	
