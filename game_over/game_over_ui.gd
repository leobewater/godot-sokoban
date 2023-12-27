extends Control


@onready var moves_label = $MC/NinePatchRect/MC/VBoxContainer/MovesLabel
@onready var record_label = $MC/NinePatchRect/MC/VBoxContainer/RecordLabel


func _ready():
	pass # Replace with function body.


func new_game() -> void:
	hide()
	record_label.hide()
	

func game_over(level: String, moves: int) -> void:
	show()
	if ScoreSync.score_is_new_best(level, moves) == true:
		record_label.show()
