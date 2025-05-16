extends Node

var partida = false

var highscore = 0
var arq = File.new()
const progresso = "user://progresso.txt"

func _ready():
	carregar_progresso()

func salvar_progresso():
	arq.open(progresso,arq.WRITE)
	arq.store_line(str(highscore))
	arq.close()

func carregar_progresso():
	if arq.file_exists(progresso):
		arq.open(progresso,arq.READ)
		highscore = arq.get_line().to_int()
		arq.close()

