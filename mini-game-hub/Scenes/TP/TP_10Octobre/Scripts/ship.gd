extends Sprite2D

@export var ship_speed: float
@export var ship_direction: Vector2
@export var ship_coordiante_to_go: Vector2



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	ship_direction = get_direction_to_target(ship_coordiante_to_go)
	move_ship(ship_speed, ship_direction, delta )

func move_ship(a_vitesse: float, a_direction: Vector2, delta: float) -> void:
	position += a_direction.normalized() * a_vitesse * delta

func get_direction_to_target(a_target_coordinate: Vector2) -> Vector2:
	return global_position.direction_to(a_target_coordinate)
