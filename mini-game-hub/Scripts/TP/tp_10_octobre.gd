extends Node2D

@onready var first_ship: Sprite2D = $Ship
@onready var marker_2d_cible_01: Marker2D = $Marker2D_Cible_01

# Called when the node enters the scene tree for the first time.
func _ready() -> void:

	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	first_ship.move_to_marker(marker_2d_cible_01)
