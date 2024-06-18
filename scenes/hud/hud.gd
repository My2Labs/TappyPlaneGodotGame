extends Control

@onready var score_label = $MarginContainer/ScoreLabel


# Called when the node enters the scene tree for the first time.
func _ready():
	SignalManager.on_score_updated.connect(on_score_updates)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#score_label.text = str(ScoreManager.get_score()) - REPLACED WITH on_score_updates and SignalManager
	pass

func on_score_updates():
	score_label.text = str(ScoreManager.get_score())
