extends Node2D

export var velocidade = 0
var cena_jogo

func _ready():
	cena_jogo = get_tree().get_current_scene()

func _process(delta):
	position.x -= velocidade*delta

func _on_body_obstaculo_body_entered(body):
	if body.name == "body_jogador":
		cena_jogo.perder()

func _on_body_passou_body_entered(body):
	if body.name == "body_jogador":
		cena_jogo.ganhar()
