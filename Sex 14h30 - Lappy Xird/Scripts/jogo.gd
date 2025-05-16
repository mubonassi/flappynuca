extends Node2D

var pontos = 0

func _ready():
	$hud/ui_gameover.hide()
	
	if global.partida == false:
		$hud/ui_menu.show()
		$hud/txt_pontos.hide()
		$jogador.queue_free()
	else:
		$hud/ui_menu.hide()
		$hud/txt_pontos.show()

func ganhar():
	pontos += 100

func perder():
	if pontos > global.highscore:
		global.highscore = pontos
	$hud/ui_gameover.show()
	$jogador.queue_free()
	global.salvar_progresso()

func _process(delta): # int(numero) > string(texto)
	$hud/txt_pontos.text = str(pontos)
	$hud/txt_highscore.text = "Highscore: "+str(global.highscore)
