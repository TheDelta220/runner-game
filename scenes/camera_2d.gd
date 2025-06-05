extends Camera2D

@onready var distance_label: Label = $"/root/Game/Hud/distance"
var last_position: Vector2
var total_distance: float = 0.0

func _ready():
	# Initialize with the camera's current position
	last_position = get_viewport().get_camera_2d().global_position

func _process(_delta):
	var camera = get_viewport().get_camera_2d()
	if camera:
		var current_position = camera.global_position
		# Calculate distance moved since last frame
		var delta_distance = current_position.distance_to(last_position)
		total_distance += delta_distance
		last_position = current_position
		
		update_distance(total_distance)

func update_distance(distance: float) -> void:
	distance_label.text = "Distance: %d m" % int(distance)
