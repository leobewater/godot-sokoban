extends NinePatchRect


const GREEN_TEXTURE = preload("res://assets/green_panel.png")


var _level_number: String = "99"


func _ready():
	pass # Replace with function body.


func _process(delta):
	pass


func set_leve_number(level_number: String) -> void:
	_level_number = level_number


func _on_gui_input(event: InputEvent):
	if event.is_action_pressed("select") == true:
		# show green background when level button is selected/clicked
		texture = GREEN_TEXTURE
		print("Selected")
