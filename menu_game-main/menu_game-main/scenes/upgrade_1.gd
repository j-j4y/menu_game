extends Button

func _ready() -> void:
	if Global.lang == "eng":
		text = "double bananas (100)"
	else:
		text = "plátanos dobles (100)"
