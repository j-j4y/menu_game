extends VBoxContainer

@onready var monkey_label: Label = $MonkeyLabel

func _on_main_game_monkeys_changed(amount) -> void:
	if Global.lang == "eng":
		monkey_label.text = str(amount) + " Monkeys"
	else:
		monkey_label.text = str(amount) + " Monos"
