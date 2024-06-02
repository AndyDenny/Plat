extends Node

var score = 0
@onready var scorelabel = $Scorelabel
@onready var power_up = $PowerUp
@onready var allcoins = $"../Coins".get_children().size()
@onready var hud = $HUD 
@onready var game_manager = %GameManager


func add_point(): 
	score += 1
	hud.update_score_text(score)
	if game_manager.is_all_coins():
		scorelabel.text = "You collected all coins."
	else:
		scorelabel.text = "You collected " + str(score) + " coins."
	
func is_all_coins():
	if allcoins == score:
		return true
	else:
		return false
