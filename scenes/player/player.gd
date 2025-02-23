extends CharacterBody3D

class_name Player

@export var speed: float = 140.0
# The downward acceleration when in the air, in meters per second squared.
#@export var fall_acceleration: float = 75.0



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	player_movement(delta)
	

	move_and_slide()


func player_movement(delta: float) -> void:
	if Input.is_action_just_pressed("move_right"):
		velocity.x += speed * delta
	if Input.is_action_just_pressed("move_left"):
		velocity.x += -speed * delta
	if Input.is_action_just_pressed("move_front"):
		velocity.z += speed * delta
	if Input.is_action_just_pressed("move_back"):
		velocity.z -= speed * delta
