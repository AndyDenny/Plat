extends Node
 


var score = 0
@onready var scorelabel = $Scorelabel
@onready var power_up = $PowerUp
@onready var coins = $"../Coins"


func add_point(): 
	score += 1
	scorelabel.text = "You collected " + str(score) + " coins."
	
func get_score():
	return score
