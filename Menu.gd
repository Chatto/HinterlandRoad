
extends Node

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	get_node("dialog").show_text("Prologue","Intro",0)
	get_node("dialog").release_focus()


func _on_dialog_dialog_control( information ):
	print(information)
