class_name Spawner extends Node2D


@export var bounds: Bounds
# instantiating Packed Scens
var food_scene:PackedScene = preload("res://gameplay/food.tscn")

func spawn_foods():
	#1 where to spawn it (position)
	var spawn_point: Vector2 = Vector2.ZERO
	spawn_point.x = randf_range(bounds.x_min + Globals.GRID_SIZE, bounds.x_max - Globals.GRID_SIZE)
	spawn_point.y = randf_range(bounds.y_min + Globals.GRID_SIZE, bounds.y_max - Globals.GRID_SIZE)
	spawn_point.x = floorf(spawn_point.x /Globals.GRID_SIZE) * Globals.GRID_SIZE
	spawn_point.y  = floorf(spawn_point.y  /Globals.GRID_SIZE) * Globals.GRID_SIZE
	#2 what we're spawning (instatiating) 
	var food = food_scene.instantiate()
	food.position = spawn_point
	#3 where we're putting it(parenenting)
	get_parent().add_child(food)
	pass
