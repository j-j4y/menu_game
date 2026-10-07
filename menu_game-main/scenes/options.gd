extends Control


func _ready() -> void:
	if (Global.lang == "eng"):
		%Options.text = "[wave]Options"
		%MusicVolumeText.text = "music volume"
	else:
		%Options.text = "[wave]Configuración"
		%MusicVolumeText.text = "volumen de la música"



func _on_espanol_button_pressed() -> void:
	Global.lang = "esp"
	%Options.text = "[wave]Configuración"
	%MusicVolumeText.text = "volumen de la música"




func _on_english_button_pressed() -> void:
	Global.lang = "eng"
	%Options.text = "[wave]Options"
	%MusicVolumeText.text = "music volume"
