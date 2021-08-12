extends Control

onready var arme1: LineEdit = $ScrollContainer/CenterContainer/VBoxContainer/ListeArme/Arme1
onready var arme2: LineEdit = $ScrollContainer/CenterContainer/VBoxContainer/ListeArme/Arme2

onready var sc_poignard: LineEdit = $ScrollContainer/CenterContainer/VBoxContainer/Sciences_Armes/GridContainer/Poignard/Poignard
onready var sc_lance: LineEdit = $ScrollContainer/CenterContainer/VBoxContainer/Sciences_Armes/GridContainer/Lance/Lance
onready var sc_masse: LineEdit = $ScrollContainer/CenterContainer/VBoxContainer/Sciences_Armes/GridContainer/MasseDarmes/Masse
onready var sc_sabre: LineEdit = $ScrollContainer/CenterContainer/VBoxContainer/Sciences_Armes/GridContainer/Sabre/Sabre
onready var sc_marteau: LineEdit = $ScrollContainer/CenterContainer/VBoxContainer/Sciences_Armes/GridContainer/Marteau/Marteau
onready var sc_arc: LineEdit = $ScrollContainer/CenterContainer/VBoxContainer/Sciences_Armes/GridContainer/Arc/Arc
onready var sc_hache: LineEdit = $ScrollContainer/CenterContainer/VBoxContainer/Sciences_Armes/GridContainer/Hache/Hache
onready var sc_epee: LineEdit = $ScrollContainer/CenterContainer/VBoxContainer/Sciences_Armes/GridContainer/Epee/Epee
onready var sc_baton: LineEdit = $ScrollContainer/CenterContainer/VBoxContainer/Sciences_Armes/GridContainer/Baton/Baton
onready var sc_glaive: LineEdit = $ScrollContainer/CenterContainer/VBoxContainer/Sciences_Armes/GridContainer/Glaive/Glaive

onready var carquois: LineEdit = $ScrollContainer/CenterContainer/VBoxContainer/CarquoisFleches/Carquois/Carquois
onready var nb_fleches: LineEdit = $ScrollContainer/CenterContainer/VBoxContainer/CarquoisFleches/NombreFleches/NombreFleches


# Called when the node enters the scene tree for the first time.
func _ready():
	load_sheet()

func save_sheet() -> void:
	Session.USER["arme_1"] = arme1.text
	Session.USER["arme_2"] = arme2.text
	Session.USER["sc_poignard"] = sc_poignard.text
	Session.USER["sc_lance"] = sc_lance.text
	Session.USER["sc_masse"] = sc_masse.text
	Session.USER["sc_sabre"] = sc_sabre.text
	Session.USER["sc_marteau"] = sc_marteau.text
	Session.USER["sc_arc"] = sc_arc.text
	Session.USER["sc_hache"] = sc_hache.text
	Session.USER["sc_epee"] = sc_epee.text
	Session.USER["sc_baton"] = sc_baton.text
	Session.USER["sc_glaive"] = sc_glaive.text
	Session.USER["carquois"] = carquois.text
	Session.USER["nb_fleches"] = nb_fleches.text
	#
	Session.save_user()

func load_sheet() -> void:
	arme1.text = Session.USER["arme_1"]
	arme2.text = Session.USER["arme_2"]
	sc_poignard.text = Session.USER["sc_poignard"]
	sc_lance.text = Session.USER["sc_lance"]
	sc_masse.text = Session.USER["sc_masse"]
	sc_sabre.text = Session.USER["sc_sabre"]
	sc_marteau.text = Session.USER["sc_marteau"]
	sc_arc.text = Session.USER["sc_arc"]
	sc_hache.text = Session.USER["sc_hache"]
	sc_epee.text = Session.USER["sc_epee"]
	sc_baton.text = Session.USER["sc_baton"]
	sc_glaive.text = Session.USER["sc_glaive"]
	carquois.text = Session.USER["carquois"]
	nb_fleches.text = Session.USER["nb_fleches"]

func _on_Bt_Menu_pressed():
	save_sheet()
	get_tree().change_scene("res://menu/Menu.tscn")


func _on_Bt_Annuler_pressed():
	load_sheet()
