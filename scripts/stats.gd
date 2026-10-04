extends VBoxContainer

@onready var monkey_label: Label = $MonkeyLabel

func _on_main_game_monkeys_changed(amount) -> void:
	monkey_label.text = str(amount) + " Monkeys"
