/// @description 

// Actions
#macro MOVE_UP "UP"
#macro MOVE_DOWN "DOWN"
#macro MOVE_LEFT "LEFT"
#macro MOVE_RIGHT "RIGHT"
#macro CHANGE "CHANGE"

sbc_action_add(MOVE_UP, SBC_KEYBOARD.UP, SBC_GAMEPAD.LS_UP);
sbc_action_add(MOVE_DOWN, SBC_KEYBOARD.DOWN, SBC_GAMEPAD.LS_DOWN);
sbc_action_add(MOVE_LEFT, SBC_KEYBOARD.LEFT, SBC_GAMEPAD.LS_LEFT);
sbc_action_add(MOVE_RIGHT, SBC_KEYBOARD.RIGHT, SBC_GAMEPAD.LS_RIGHT);
sbc_action_add(CHANGE, SBC_KEYBOARD.SPACE, SBC_GAMEPAD.FACE1);
