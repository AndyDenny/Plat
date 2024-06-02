extends Node2D
 
@onready var score_counter = $HUD/Score_counter

func update_score_text(score):
	score_counter.text = str(score)
