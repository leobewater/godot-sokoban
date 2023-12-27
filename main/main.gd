extends CanvasLayer


@onready var grid_container = $MC/VBoxContainer/GridContainer


const button_scene: PackedScene = preload("res://level_button/level_button.tscn")
const LEVEL_COLS: int = 6
const LEVEL_ROWS: int = 5


func _ready():
	setup_grid()


func setup_grid() -> void:
	for level in range(LEVEL_COLS * LEVEL_ROWS):
		var lbs = button_scene.instantiate()
		lbs.set_leve_number(str(level + 1))
		grid_container.add_child(lbs)
