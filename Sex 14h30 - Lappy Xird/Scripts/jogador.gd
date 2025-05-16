extends RigidBody2D

export var impulso = 0

func _ready(): #Ao inicio
	pass

func _process(delta): #Para sempre/Loop infinito
	rotation = 0
	angular_velocity = 0
	position.x = 0

func pular():
	apply_impulse(Vector2(0,0),Vector2(0,impulso))

func _input(event):
	if event.is_action_pressed("pulo"):
		pular()
