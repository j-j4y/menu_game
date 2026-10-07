extends Control

#var lang = "eng"
func _ready() -> void:
	if (Global.lang == "eng"):
		%Title.text = "MONKEY CLICKER"
		%PlayButton.text = "play"
		%OptionsButton.text = "options"
		%QuitButton3.text = "quit"

	else:
		%Title.text = "los plátanos"
		%PlayButton.text = "jugar"
		%OptionsButton.text = "opciones"
		%QuitButton3.text = "abandonar"
