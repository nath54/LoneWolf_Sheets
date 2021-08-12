extends Control

func _on_BtOk_pressed():
	var pseudo: String = $CenterContainer/VBoxContainer/Pseudo.text
	if len(pseudo) > 0:
		pseudo = pseudo.replace(".", "_")
		pseudo = pseudo.replace(" ", "_")
		Session.reset_user(pseudo)
		Session.save_user()
		get_tree().change_scene("res://menu/Menu.tscn")
