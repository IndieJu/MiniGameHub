extends Sprite2D

@export var ship_speed: float #Vitesse du vaisseau, accessible depuis l'extérieur
@export var ship_coordiante_to_go: Vector2 #Variable accessile depuis l'extérieur durant l'éxécution, donne les coordonées où il faut aller

var ship_direction: Vector2 #Variable de travail interne, indique la direction à suivre pour plus de lisibiltié

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
# A chaque frame, je récupère la direction, car elle peut changer en cours d'éxécution et je déplace le vaisseau
func _process(delta: float) -> void:
	ship_direction = get_direction_to_target(ship_coordiante_to_go)
	move_ship(ship_speed, ship_direction, delta)

# je déplace le vaisseau en me basant sur une vitesse, une direction, et je corrige le tout avec le delta
func move_ship(a_vitesse: float, a_direction: Vector2, delta: float) -> void: 
	position += a_direction.normalized() * a_vitesse * delta

# je calcule la direction du target passé en paramèter par rapport à mon vaisseau
func get_direction_to_target(a_target_coordinate: Vector2) -> Vector2:
	return global_position.direction_to(a_target_coordinate)
