extends Node2D

@onready var cases : Array = []

@onready var x_coord : float = 50.0
@onready var y_coord : float = 50.0

@onready var board_width : float = 700.0
@onready var board_height : float = 700.0
@onready var board_rect : Rect2 = Rect2(x_coord, y_coord, board_width, board_height)

@onready var case_width : float = board_width/15.0
@onready var case_height : float = board_height/15.0
@onready var case_rect : Rect2

@onready var case_scene = preload("res://Case.tscn")

func _draw():
	
	draw_rect(board_rect, Color.BLACK, false)
	for x in range(1,15):
		for y in range(1,15):
			draw_rect( Rect2(x_coord * x, y_coord * y, case_width,case_height), Color.BLACK,false)
			
		
# Called when the node enters the scene tree for the first time.
func _ready():
	
	
	for x in range(1,15):
		for y in range(1,15):
			var case = case_scene.instantiate()
			case.initialize(x,y,x_coord * x,y_coord * y,case_width,case_height,false,0,"")
			add_child(case)
			cases.append(case)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	
	
	
	
	pass

func _unhandled_input(event):
	if event is InputEventMouseButton:
		if event.double_click:
			for case in cases:
				if event.position.x > case.row_coord and event.position.x < case.row_coord + case_width:
					if event.position.y > case.col_coord and event.position.y < case.col_coord + case_height:
						if case.is_selected == true:
							case.is_selected = false
						elif case.is_selected == false:
							case.is_selected = true
				
						print(case.is_selected)					
