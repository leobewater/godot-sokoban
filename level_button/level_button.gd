extends NinePatchRect


const GREEN_TEXTURE = preload("res://assets/green_panel.png")


@onready var level_label = $LevelLabel
@onready var check_mark = $CheckMark


var _level_number: String = "22"


func _ready():
	level_label.text = _level_number


func _process(delta):
	pass


func set_leve_number(level_number: String) -> void:
	_level_number = level_number


func _on_gui_input(event: InputEvent):
	if event.is_action_pressed("select") == true:
		# show green background when level button is selected/clicked
		texture = GREEN_TEXTURE
		print("Selected:", _level_number)
		SignalManager.on_level_selected.emit(_level_number)
