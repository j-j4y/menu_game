extends RichTextLabel

var texture = preload("res://assets/banana-holder.png")

func _ready() -> void:
	bbcode_enabled = true
	append_text("+1 [img width=100 height=100]res://assets/banana-holder.png[/img]")
