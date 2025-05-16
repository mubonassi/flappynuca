extends Node2D

var obstaculo = preload("res://Cenas/obstaculo.tscn")
var contador = 0
export var tempo_limite = 0.0

func _ready():
	gerar()

func gerar():
	var novo_obstaculo = obstaculo.instance()
	novo_obstaculo.position.x = 1150
	novo_obstaculo.position.y = rand_range(140,430)
	add_child(novo_obstaculo)

func _process(delta):
	contador += delta
	if contador > tempo_limite:
		contador = 0
		gerar()
