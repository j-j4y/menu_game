extends Control

@onready var upgrade_1: Button = %Upgrade1

const save_path = "user://userdata.save"

var monkeys = 0
var amount_clicked = 1
var total_clicks = 0
var upgrade1 = false


signal monkeys_changed
signal monkey_clicked


func _ready() -> void:
	load_data()
	emit_signal("monkeys_changed", monkeys)
	%Upgrade1.disabled = true
	
	#monkeys = 0
	#save_data()
	#emit_signal("monkeys_changed", monkeys) #for resetting count to 0
	
func save_data():
	var data = {
		"monkeys": monkeys,
		"total_clicks": total_clicks,
		"upgrade1": upgrade1
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
			total_clicks = data.get("total_clicks", 0)
			upgrade1 = data.get("upgrade1", false)
			if upgrade1:
				amount_clicked = 2
		else:
			save_data()
		
func _on_click_button_button_down() -> void:
	total_clicks += 1
	monkeys += amount_clicked
	
	emit_signal("monkeys_changed", monkeys)
	emit_signal("monkey_clicked", amount_clicked)
	
	if total_clicks >= 100 and not upgrade1:
		%Upgrade1.disabled = false
	save_data()


func _on_upgrade_1_pressed() -> void:
	if total_clicks >= 100 and not upgrade1:
		amount_clicked = 2
		upgrade1 = true
		%Upgrade1.disabled = true
		save_data()
