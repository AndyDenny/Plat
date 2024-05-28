extends Area2D

@onready var game_manager = %GameManager
@onready var animation_player = $AnimationPlayer
@onready var power_up = $PowerUp


func _on_body_entered(body):
	game_manager.add_point()
	var allscore = game_manager.get_score()
	if allscore == 7:
		animation_player.play("power_up")
	else:
		animation_player.play("pick_up")
