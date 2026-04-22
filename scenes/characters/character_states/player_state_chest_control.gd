class_name PlayerStateChestControl
extends PlayerState

const DURATION_CONTROL := 500

var time_start_control := Time.get_ticks_msec()

func _enter_tree() -> void:
	animation_player.play("chest_control")
	time_start_control = Time.get_ticks_msec()
	player.velocity = Vector2.ZERO
	

func _process(_delta: float) -> void:
	if Time.get_ticks_msec() - time_start_control > DURATION_CONTROL:
		transition_state(Player.State.MOVING)
