extends Node

# Get the nodes before the ready function is called
@onready var label: = get_node("Label")
@onready var timer: = get_node("Timer")

func _ready():
	# Start your timer
	timer.start()

func time_left_to_live() -> Array:
	var time_left = timer.time_left
	var minutes = floor(time_left / 60)
	var seconds = int(time_left) % 60
	return [minutes, seconds]

func _process(_delta):
	label.text = "%02d:%02d" % time_left_to_live()
