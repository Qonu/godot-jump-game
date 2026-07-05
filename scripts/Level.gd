extends Node2D

func _ready():
	# This script can be used for level management
	# Future: spawn enemies, manage score, etc.
	pass

func _physics_process(_delta):
	# Check if player fell off the screen
	if $Player.position.y > 800:
		get_tree().reload_current_scene()
