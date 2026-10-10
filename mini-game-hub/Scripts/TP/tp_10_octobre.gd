extends Node2D

@onready var first_ship: Sprite2D = $Ship
@onready var marker_2d_cible_01: Marker2D = $Marker2D_Cible_01
@onready var marker_2d_cible_02: Marker2D = $Marker2D_Cible_02

var current_marker_to_go: Marker2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	current_marker_to_go = marker_2d_cible_01
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	first_ship.ship_coordiante_to_go = current_marker_to_go.global_position
	
	# Si la distance entre mon vaisseau et le marquer est inférieure à 5, je décide de changer de marker
	if(first_ship.global_position.distance_to(current_marker_to_go.global_position)  < 5.):
		pass
