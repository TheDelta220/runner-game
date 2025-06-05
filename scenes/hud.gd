extends Control

@onready var distance_label: Label = $distance

func update_distance(distance: float) -> void:
	distance_label.text = "%d m" % int(distance)
