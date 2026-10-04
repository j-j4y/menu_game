extends MarginContainer

@onready var click_button: TextureButton = $CenterContainer/ClickButton
@onready var rich_text_label: RichTextLabel = $"../../Indicators/RichTextLabel"

func _ready() -> void:
	click_button.pivot_offset = click_button.size / 2
	
func _on_click_button_button_down() -> void:
	var tween = get_tree().create_tween()
	tween.tween_property(click_button, "scale", Vector2(.9,.9), .1)


func _on_click_button_button_up() -> void:
	var tween = get_tree().create_tween()
	tween.tween_property(click_button, "scale", Vector2(1,1), .1)


func _on_main_game_monkey_clicked(amount) -> void:
	pass # Replace with function body.
