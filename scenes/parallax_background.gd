class_name GameBackground
extends ParallaxBackground
@onready var distance_label = get_node("/root/Game/Hud/distance")

const PIXELS_PER_METER = 100  # adjust to your scale
const SCROLL_SPEED_PIXELS_PER_SECOND = 200  # adjust to your game's scrolling speed

var elapsed_time: float = 0.0

func _process(delta):
	elapsed_time += delta
	var distance_pixels = SCROLL_SPEED_PIXELS_PER_SECOND * elapsed_time
	var distance_meters = distance_pixels / PIXELS_PER_METER
	update_distance(distance_meters)

func update_distance(distance: float) -> void:
	distance_label.text = "%d m" % int(distance)
