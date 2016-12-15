
extends Node

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_process(true)
	get_node("Player/Sprites").play("idle")
	
func _process(delta):
	print(Input.get_joy_axis(0,JOY_ANALOG_0_X))
	print(Input.get_connected_joysticks())
	
	if(abs(Input.get_joy_axis(0,JOY_ANALOG_0_X)) > 0.25):
		get_node("Player/Sprites").play("run")
	else:
			get_node("Player/Sprites").play("idle")
	get_node("Player").move(Vector2(Input.get_joy_axis(0,JOY_ANALOG_0_X)*5,Input.get_joy_axis(0,JOY_ANALOG_0_Y)*5))
	

