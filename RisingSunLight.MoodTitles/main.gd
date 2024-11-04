extends Node

const ID = "RisingSunLight.MoodTitles"
const PATH_TO_COSMETICS_TITLES = "mod://Resources/Cosmetic_Titles"


onready var Lure = get_node("/root/SulayreLure")


func addTitles(titles):
	for title in titles:
		Lure.add_content(
			ID,
			title + "_title",
			PATH_TO_COSMETICS_TITLES + "/title_" + title + ".tres"
		)


func _ready():
	var titles = [
		"afk", "wont_answer_to_message", "happy", "sad", "scared","sleepy",
		"angry", "disgusted", "tired", "surprised", "shy", "bored", "excited",
		"jealous", "silly", "nervous", "disappointed", "lonely", "embarrassed",
		"confused",
	]
	addTitles(titles)
