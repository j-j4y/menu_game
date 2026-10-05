extends Control


const save_path = "user://userdata.save"

var monkeys = 0
var amount_clicked = 1


signal monkeys_changed
signal monkey_clicked

func _ready() -> void:
	load_data()
	emit_signal("monkeys_changed", monkeys)
	
	#monkeys = 0
	#save_data()
	#emit_signal("monkeys_changed", monkeys) #for resetting count to 0
	
func save_data():
	var data = {
		"monkeys": monkeys,
	}
	var file  = FileAccess.open(save_path, FileAccess.WRITE)
	file.store_var(data)
	file.close()
	
	

func load_data():
	if FileAccess.file_exists(save_path):
		var file = FileAccess.open(save_path, FileAccess.READ)
		var data = file.get_var()
		file.close()
		if typeof(data) == TYPE_DICTIONARY:
			monkeys = data.get("monkeys", 0)
		else:
			save_data()
		
func _on_click_button_button_down() -> void:
	monkeys += amount_clicked
	emit_signal("monkeys_changed", monkeys)
	emit_signal("monkey_clicked", amount_clicked)
	save_data()
		
