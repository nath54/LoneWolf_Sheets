extends Control

onready var descriptions: TextEdit = $ScrollContainer/CenterContainer/VBoxContainer/ObjetsSpeciaux/VarsObjs/Descriptions/Descriptions
onready var effets: TextEdit = $ScrollContainer/CenterContainer/VBoxContainer/ObjetsSpeciaux/VarsObjs/Effets/Effets
onready var nomarme: LineEdit = $ScrollContainer/CenterContainer/VBoxContainer/VBoxContainer/Nom/NomArme
onready var typearme: LineEdit = $ScrollContainer/CenterContainer/VBoxContainer/VBoxContainer/Type/TypeArme
onready var bonushabiltype: LineEdit = $ScrollContainer/CenterContainer/VBoxContainer/VBoxContainer/BonusHabilType/BonusType
onready var propriete: LineEdit = $ScrollContainer/CenterContainer/VBoxContainer/VBoxContainer/Propriete/ProprieteArme
onready var bonushabilprop: LineEdit = $ScrollContainer/CenterContainer/VBoxContainer/VBoxContainer/BonusHabilProp/BonusProp

# Called when the node enters the scene tree for the first time.
func _ready():
	load_sheet()

func save_sheet():
	Session.USER["objets_speciaux_description"] = descriptions.text
	Session.USER["objets_speciaux_effets"] = effets.text
	Session.USER["arme_kai_nom"] = nomarme.text
	Session.USER["arme_kai_type"] = typearme.text
	Session.USER["arme_kai_bonus_habilete_type"] = bonushabiltype.text
	Session.USER["arme_kai_propriete"] = propriete.text
	Session.USER["arme_kai_bonus_habilete_propriete"] = bonushabilprop.text
	Session.save_user()

func load_sheet():
	descriptions.text = Session.USER["objets_speciaux_description"]
	effets.text = Session.USER["objets_speciaux_effets"]
	nomarme.text = Session.USER["arme_kai_nom"]
	typearme.text = Session.USER["arme_kai_type"]
	bonushabiltype.text = Session.USER["arme_kai_bonus_habilete_type"]
	propriete.text = Session.USER["arme_kai_propriete"]
	bonushabilprop.text = Session.USER["arme_kai_bonus_habilete_propriete"]

func _on_Bt_Menu_pressed():
	save_sheet()
	get_tree().change_scene("res://menu/Menu.tscn")


func _on_Bt_Annuler_pressed():
	load_sheet()
