extends Node

var USER: Dictionary = {
	"name": "",
	
	"grandes_disciplines" : ["", "", "", "", "", "", "", "", "", "", "", "", "", ""],
	"sac_a_dos" : ["", "", "", "", "", "", "", "", "", ""],
	"repas" : "",
	"bourse" : "0",

	"habilete" : "0",
	"endurance" : "0",

	"combats" : [],

	"objets_speciaux_description" : "",
	"objets_speciaux_effets": "",

	"arme_kai_nom" : "",
	"arme_kai_type" : "",
	"arme_kai_bonus_habilete_type" : "",
	"arme_kai_propriete" : "",
	"arme_kai_bonus_habilete_propriete" : "",
	
	"armes" : ["", ""],
	
	"sciences_armes" : {
		"poignard": "0",
		"lance": "0",
		"masse d'arme": "0",
		"sabre": "0",
		"marteau de guerre": "0",
		"arc": "0",
		"hache": "0",
		"épée": "0",
		"bâton": "0",
		"glaive": "0"
	},
	
	"carquois" : false,
	"fleches" : "0",
	
	"page": "",
	"notes": ""
}

var combat_quot_att: String = ""
var combat_monstre_endurance: String = ""
var combat_maitre_endurance: String = ""

func save_user() -> void:
	var file: File = File.new()
	file.open("user://"+USER.name+".dat", File.WRITE)
	file.store_string(JSON.print(USER))
	file.close()

func reset_user(username: String) -> void:
	USER = {
		"name": username,
	
		"grandes_disciplines" : ["", "", "", "", "", "", "", "", "", "", "", "", "", ""],
		"sac_a_dos" : ["", "", "", "", "", "", "", "", "", ""],
		"repas" : "",
		"bourse" : "0",
	
		"habilete" : "0",
		"endurance" : "0",
	
		"combats" : [],
	
		"objets_speciaux_description" : "",
		"objets_speciaux_effets": "",
	
		"arme_kai_nom" : "",
		"arme_kai_type" : "",
		"arme_kai_bonus_habilete_type" : "",
		"arme_kai_propriete" : "",
		"arme_kai_bonus_habilete_propriete" : "",
		
		"armes" : ["", ""],
		
		"sc_poignard": "0",
		"sc_lance": "0",
		"sc_masse": "0",
		"sc_sabre": "0",
		"sc_marteau": "0",
		"sc_arc": "0",
		"sc_hache": "0",
		"sc_epee": "0",
		"sc_baton": "0",
		"sc_glaive": "0",
		"carquois" : false,
		"nb_fleches" : "0",
	
		"page": "",
		"notes": ""
	}

func load_user(username: String) -> void:
	var file: File = File.new()
	if file.file_exists("user://"+username+".dat"):
		file.open("user://"+username+".dat", File.READ)
		USER = JSON.parse(file.get_as_text()).result
		file.close()
	else:
		printerr("Le fichier n'existe pas !")
