extends Node2D


var row_index : int
var col_index : int
var row_coord : float
var col_coord : float
var width : float
var height : float
var bonus_used : bool = false
var bonus_value : int
var value : String = ""
var is_selected : bool = false

func initialize(x,y,x_coord,y_coord,case_width,case_height,is_bonus_used,b_value,case_value):
	row_index = x
	col_index = y
	row_coord = x_coord
	col_coord = y_coord
	case_width = case_width
	case_height = case_height
	bonus_used = is_bonus_used
	bonus_value = b_value
	case_value = case_value
	
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
