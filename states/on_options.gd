extends BaseState


func _enter(msg: Dictionary) -> void:
	%Text.text = "Hello! I came from: %s" % (msg.previous if msg.has("previous") else "DUNNO")

	%Instructions.text = "Main: Esc\nOptions: Space"


func _exit() -> Dictionary:
	return {
		"previous": "OPTIONS",
	}
