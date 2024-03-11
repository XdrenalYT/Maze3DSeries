extends Node3D

#wall scene preload
var wall_scene = preload("res://World/Wall.tscn")

var floor_size = 300 #assuming floor is a square

@export var max_walls: int # how many walls we want
@export var min_scale: int # only for x axis
@export var max_scale: int # only for x axis


func _physics_process(delta):
	if Input.is_action_just_pressed("spawnMaze"): #set to "e"
		print("spawn Maze")
		randomize()
		
		for c in $WallHolder.get_children():
			c.queue_free()
		
		for w in max_walls/2:
			var wall = wall_scene.instantiate()
			$WallHolder.add_child(wall)
			wall.global_transform.origin.x = randi_range(-(floor_size/2), floor_size/2)
			wall.global_transform.origin.z = randi_range(-(floor_size/2), floor_size/2)
			wall.change_wall_size(randi_range(min_scale, max_scale))
		for w in max_walls/2:
			var wall = wall_scene.instantiate()
			$WallHolder.add_child(wall)
			wall.rotate_wall()
			wall.global_transform.origin.x = randi_range(-(floor_size/2), floor_size/2)
			wall.global_transform.origin.z = randi_range(-(floor_size/2), floor_size/2)
			wall.change_wall_size(randi_range(min_scale, max_scale))
