extends Node

func _ready() -> void:
	var states: Dictionary = {
		"Main": StateData.new($StateMachine/OnMain, {
			"Menu": _can_go_menu,
		}),
		"Menu": StateData.new($StateMachine/OnMenu, {
			"Main": _can_go_main,
			"Options": _can_go_options,
		}),
		"Options": StateData.new($StateMachine/OnOptions, {
			"Main": _can_go_main,
			"Menu": _can_go_menu,
		}),
	}

	$StateMachine.setup("Main", states)


func _can_go_menu() -> bool:
	return Input.is_action_just_pressed("ui_accept")


func _can_go_main() -> bool:
	return Input.is_action_just_pressed("ui_cancel")


func _can_go_options() -> bool:
	return Input.is_action_just_pressed("ui_select")
