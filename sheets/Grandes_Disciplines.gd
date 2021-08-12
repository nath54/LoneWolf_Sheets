extends Control

func _ready():
	load_sheet()

func _on_Bt_Menu_pressed():
	save_sheet()
	get_tree().change_scene("res://menu/Menu.tscn")

func save_sheet() -> void:
	for x in range(14):
		var edit: LineEdit = get_node("ScrollContainer/CenterContainer/VBoxContainer/Ligne"+str(x+1)+"/LineEdit") as LineEdit
		Session.USER["grandes_disciplines"][x] = edit.text
	Session.save_user()

func load_sheet() -> void:
	for x in range(14):
		var edit: LineEdit = get_node("ScrollContainer/CenterContainer/VBoxContainer/Ligne"+str(x+1)+"/LineEdit") as LineEdit
		edit.text = Session.USER["grandes_disciplines"][x]
		


func _on_Bt_Annuler_pressed():
	load_sheet()
