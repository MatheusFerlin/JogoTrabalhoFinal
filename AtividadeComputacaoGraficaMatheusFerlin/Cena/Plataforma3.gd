extends KinematicBody2D

const UP_DIRECTION := Vector2.UP

export var tempo := 20
export var speed := 10


var _jumps_made := 0
var _velocity := Vector2.ZERO

var x = 0

func _physics_process(delta: float) -> void:

	if x < tempo:
			_velocity.x = tempo * speed


	
	if Input.is_action_just_pressed("ui_up"):
		_velocity.y = -1000
	
	_velocity = move_and_slide(_velocity, UP_DIRECTION)


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
