extends Node2D


@onready var tile_map = $TileMap
@onready var player = $Player
@onready var camera_2d = $Camera2D

# value is from the TileSet layers
const FLOOR_LAYER = 0
const WALL_LAYER = 1
const TARGET_LAYER = 2
const BOX_LAYER = 3

# value is from the TileSet Atlas
const SOURCE_ID = 0

# json file key
const LAYER_KEY_FLOOR = "Floor"
const LAYER_KEY_WALLS = "Walls"
const LAYER_KEY_TARGETS = "Targets"
const LAYER_KEY_TARGET_BOXES = "TargetBoxes"
const LAYER_KEY_BOXES = "Boxes"

# mapping json keys to the TileSet layer numbers
const LAYER_MAP = {
	LAYER_KEY_FLOOR: FLOOR_LAYER,
	LAYER_KEY_WALLS: WALL_LAYER,
	LAYER_KEY_TARGETS: TARGET_LAYER,
	LAYER_KEY_TARGET_BOXES: BOX_LAYER,
	LAYER_KEY_BOXES: BOX_LAYER
}


func _ready():
	setup_level()


func _process(delta):
	pass


func add_layer_tiles(layter_tilers, layer_name: String) -> void:
	pass


func setup_level() -> void:
	tile_map.clear()
	var level_data = GameData.get_data_for_level("12")
	var level_tiles = level_data.tiles # "tiles" is from json key
	var player_start = level_data.player_start
	
	for layer_name in LAYER_MAP.keys():
		add_layer_tiles(level_tiles[layer_name], layer_name)
