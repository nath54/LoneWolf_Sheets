extends Control

onready var page: LineEdit = $ScrollContainer/CenterContainer/VBoxContainer/Page/HBoxContainer/Page
onready var notes: TextEdit = $ScrollContainer/CenterContainer/VBoxContainer/Notes/Notes

# Called when the node enters the scene tree for the first time.
func _ready():
	load_sheet()

func save_sheet() -> void:
	Session.USER["page"] = page.text
	Session.USER["notes"] = notes.text
	Session.save_user()

func load_sheet() -> void:
	page.text = Session.USER["page"]
	notes.text = Session.USER["notes"]

func _on_Bt_Menu_pressed():
	save_sheet()
	get_tree().change_scene("res://menu/Menu.tscn")


func _on_Bt_Annuler_pressed():
	load_sheet()
