extends Control

onready var habilete: LineEdit = $ScrollContainer/CenterContainer/VBoxContainer/Stats/Stats_Vars/HBoxContainer/Habilete/Habilete
onready var endurance: LineEdit = $ScrollContainer/CenterContainer/VBoxContainer/Stats/Stats_Vars/HBoxContainer2/Endurance/Endurance

onready var combat_maitre_endurance: LineEdit = $ScrollContainer/CenterContainer/VBoxContainer/Combat/Stats_Vars/EnduMaitre/Endu_GrandMaitre
onready var combat_monstre_endurance: LineEdit = $ScrollContainer/CenterContainer/VBoxContainer/Combat/Stats_Vars/QuotAtt/QuotAtt
onready var combat_quot_att: LineEdit = $ScrollContainer/CenterContainer/VBoxContainer/Combat/Stats_Vars/EnduEnemi/EnduEnnemi

# Called when the node enters the scene tree for the first time.
func _ready():
	load_sheet()


func save_sheet() -> void:
	Session.USER["habilete"] = habilete.text 
	Session.USER["endurance"] = endurance.text
	#
	Session.combat_maitre_endurance = combat_maitre_endurance.text
	Session.combat_quot_att = combat_quot_att.text
	Session.combat_monstre_endurance = combat_monstre_endurance.text
	#
	Session.save_user()

func load_sheet() -> void:
	habilete.text = Session.USER["habilete"]
	endurance.text = Session.USER["endurance"]
	#
	combat_maitre_endurance.text = Session.combat_maitre_endurance
	combat_quot_att.text = Session.combat_quot_att
	combat_monstre_endurance.text = Session.combat_monstre_endurance


func _on_Bt_Menu_pressed():
	save_sheet()
	get_tree().change_scene("res://menu/Menu.tscn")


func _on_Bt_Annuler_pressed():
	load_sheet()
