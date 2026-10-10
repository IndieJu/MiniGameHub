extends Sprite2D

@export var ship_speed:float = 100.
@export var ship_coordiante_to_go_one: Vector2 #Variable accessile depuis l'extérieur durant l'éxécution, donne les coordonées où il faut aller
@export var ship_coordiante_to_go_two: Vector2 #Variable accessile depuis l'extérieur durant l'éxécution, donne les coordonées où il faut aller

var is_going_to_ship_one: bool = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
# A chaque frame, je récupère la direction, car elle peut changer en cours d'éxécution et je déplace le vaisseau
func _process(delta: float) -> void:
	
	var ship_direction: Vector2 #= get_direction_to_target(ship_coordiante_to_go_one)
	
	if is_going_to_ship_one:
		ship_direction = get_direction_to_target(ship_coordiante_to_go_one)
	else:
		ship_direction = get_direction_to_target(ship_coordiante_to_go_two)

	if(Input.is_action_just_pressed("SpacePressed")):
		is_going_to_ship_one = not is_going_to_ship_one

	print(is_going_to_ship_one) #?
	move_ship(ship_direction, delta)

# Je déplace le vaisseau en me basant sur une vitesse, une direction, et je corrige le tout avec le delta
func move_ship(direction: Vector2, delta: float) -> void: 
	position += direction.normalized() * ship_speed * delta

# Je calcule la direction du target passé en paramèter par rapport à mon vaisseau
func get_direction_to_target(target_coordinate: Vector2) -> Vector2:
	return global_position.direction_to(target_coordinate)
	
