extends MeshInstance3D

# control size.x of mesh
@export var size_x: float

# control default value of mesh's height
@export var dflt_y: float


func change_wall_size(new_x):
	scale += Vector3(new_x,0,0)

