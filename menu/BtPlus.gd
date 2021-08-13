extends Button

export var path_lineedit: String = ""

const numbers: Array = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

func is_int(txt: String) -> bool:
	if txt == "":
		return false
	var c: String
	for x in range(len(txt)):
		c = txt[x]
		if not c in numbers:
			return false
	return true

func _on_BtPlus_pressed():
	if path_lineedit != "":
		var input: LineEdit = get_parent().get_node(path_lineedit)
		if input == null:
			return
		var txt: String = input.text
		if txt != "":
			if is_int(txt):
				var nb: int = int(txt)
				input.text = str(nb+1)
		elif is_int(input.placeholder_text):
			input.text = str(int(input.placeholder_text) + 1)
			
		
