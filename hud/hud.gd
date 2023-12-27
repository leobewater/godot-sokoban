extends Control

@onready var level_label = $MC/VBoxContainer/HBoxContainer/LevelLabel
@onready var moves_label = $MC/VBoxContainer/HBoxContainer2/MovesLabel
@onready var best_label = $MC/VBoxContainer/HBoxContainer3/BestLabel


func _ready():
	pass # Replace with function body.


func _process(delta):
	pass


func set_moves_label(moves: int) -> void:
	moves_label.text = str(moves)


func set_best_label(best: int) -> void:
	best_label.text = str(best)


func set_level_label(level: String) -> void:
	level_label.text = level
