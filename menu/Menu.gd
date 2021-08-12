extends Control

func _ready():
	$ScrollContainer/GridContainer/Session.text = "Session : "+Session.USER["name"]


func _on_BtGrandesDisciplines_pressed():
	get_tree().change_scene("res://sheets/Grandes_Disciplines.tscn")


func _on_BtAffaires_pressed():
	get_tree().change_scene("res://sheets/Sac_a_dos.tscn")


func _on_BtCombats_pressed():
	get_tree().change_scene("res://sheets/Combats.tscn")


func _on_BtObjetsSpeciaux_pressed():
	get_tree().change_scene("res://sheets/Objets_Speciaux.tscn")


func _on_BtArmes_pressed():
	get_tree().change_scene("res://sheets/Armes.tscn")


func _on_BtSave_pressed():
	Session.save_user()


func _on_BtQuitSession_pressed():
	Session.save_user()
	get_tree().change_scene("res://menu/Select_Session.tscn")


func _on_Bt_Oui_pressed():
	Session.reset_user(Session.USER["name"])
	$Alert_Reinit_Session.visible = false


func _on_Bt_Non_pressed():
	$Alert_Reinit_Session.visible = false


func _on_BtPage_pressed():
	get_tree().change_scene("res://sheets/Page.tscn")


func _on_BtResetSession_pressed():
	$Alert_Reinit_Session.visible = true


func _on_BtQuit_pressed():
	Session.save_user()
	get_tree().quit()


func _on_BtGuide_pressed():
	pass # Replace with function body.
