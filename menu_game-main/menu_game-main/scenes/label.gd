extends Label

func _ready() -> void:
	if Global.lang == "eng":
		text = "upgrades"
	else:
		text = "mejora"
