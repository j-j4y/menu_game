extends RichTextLabel

var texture = preload("res://assets/banana-holder.png")

func _ready() -> void:
	bbcode_enabled = true
	append_text("[img width=50 height=50]res://assets/banana-holder.png[/img]")


func _on_disappear_timer_timeout() -> void:
	queue_free()
