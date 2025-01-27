extends Camera2D

var player = null

func _ready():
	Global.death_zone = limit_bottom + 600

func _process(_delta):
	if player == null:
		player = get_node("/root/Level3/Player_Container/Player")
	if player != null:
		position = player.position

func _physics_process(_delta):
	var vtrans = get_canvas_transform()
	var top_left = -vtrans.get_origin() / vtrans.get_scale()
	$Fade.rect_global_position = top_left
