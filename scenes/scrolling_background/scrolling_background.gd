extends ParallaxBackground


# Called when the node enters the scene tree for the first time.
func _ready():
	SignalManager.on_plane_died.connect(on_plane_dies)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	scroll_offset.x -= GameManager.SCROLL_SPEED * delta

func on_plane_dies():
	set_process(false)
