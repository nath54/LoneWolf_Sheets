extends Control

onready var bourse: LineEdit = $ScrollContainer/CenterContainer/VBoxContainer/Bourse/Bourse
onready var repas: TextEdit = $ScrollContainer/CenterContainer/VBoxContainer/Repas/Repas

# Called when the node enters the scene tree for the first time.
func _ready():
	load_sheet()

func load_sheet() -> void:
	# Sac à dos
	for x in range(10):
		var edit: LineEdit = get_node("ScrollContainer/CenterContainer/VBoxContainer/Sac/Sac"+str(x+1))
		edit.text = Session.USER["sac_a_dos"][x]
	# Bourse
	bourse.text = Session.USER["bourse"]
	# Repas
	repas.text = Session.USER["repas"]

func save_sheet() -> void:
	# Sac à dos
	for x in range(10):
		var edit: LineEdit = get_node("ScrollContainer/CenterContainer/VBoxContainer/Sac/Sac"+str(x+1))
		Session.USER["sac_a_dos"][x] = edit.text
	# Bourse
	Session.USER["bourse"] = bourse.text
	# Repas
	Session.USER["repas"] = repas.text
	#
	Session.save_user()

func _on_Bt_Menu_pressed():
	save_sheet()
	get_tree().change_scene("res://menu/Menu.tscn")


func _on_Bt_Annuler_pressed():
	load_sheet()
