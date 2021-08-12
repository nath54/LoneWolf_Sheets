extends Control

func list_files_in_directory(path: String) -> Array:
	var files: Array = []
	var dir: Directory = Directory.new()
	dir.open(path)
	dir.list_dir_begin()

	while true:
		var file: String = dir.get_next()
		if file == "":
			break
		elif not file.begins_with("."):
			files.append(file)

	dir.list_dir_end()

	return files

func _ready():
	load_sessions_names()

func load_sessions_names() -> void:
	var files: Array = list_files_in_directory("user://")
	for f in files:
		var bt_s: Button = $CenterContainer/VBoxContainer/BtNew.duplicate()
		bt_s.text = f
		bt_s.connect("pressed", self, "_on_bt_pressed", [f])
		$CenterContainer/VBoxContainer/Sessions.add_child(bt_s)
	#
	$CenterContainer/VBoxContainer/BtNew.connect("pressed", self, "_on_bt_pressed", ["BtNew"])

func _on_bt_pressed(bt_name: String) -> void:
	if bt_name == "BtNew":
		get_tree().change_scene("res://menu/new_session.tscn")
	else:
		var pseudo: String = bt_name.split(".")[0]
		Session.load_user(pseudo)
		get_tree().change_scene("res://menu/Menu.tscn")


