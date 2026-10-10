extends Sprite2D
enum Direction { HORIZONTAL, VERTICAL }

@export var vehicle_speed: float
@export var vehicle_direction: Vector2


func _process(delta: float) -> void:
	
	move_vehicle(vehicle_speed, vehicle_direction, delta)
	


func move_vehicle(a_speed: float, a_direction: Vector2, delta: float) -> void:
	self.position += a_direction.normalized() * a_speed * delta
	self.rotation = a_direction.angle() + PI / 2
