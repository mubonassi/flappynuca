extends Control

func _on_btn_retry_pressed():
	get_tree().reload_current_scene()

func _on_btn_menu_pressed():
	global.partida = false
	get_tree().reload_current_scene()
