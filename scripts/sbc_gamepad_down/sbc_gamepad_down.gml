/// @description Returns true if given gamepad_enum is down.
/// @param sbc_gamepad_enum

// This script does not rely on the SBC update script. It can be called from anywhere at any time.

sbc_ensureinit();
with (global.simple_binary_controller)
{
	if (sbc_gamepad_id == undefined) return false;
	switch (argument[0]) 
	{
		case SBC_GAMEPAD.LS_UP:
			return gamepad_axis_value(sbc_gamepad_id, gp_axislv) < sbc_deadzone * -1;
		case SBC_GAMEPAD.LS_DOWN:
			return gamepad_axis_value(sbc_gamepad_id, gp_axislv) > sbc_deadzone;
		case SBC_GAMEPAD.LS_LEFT:
			return gamepad_axis_value(sbc_gamepad_id, gp_axislh) < sbc_deadzone * -1;
		case SBC_GAMEPAD.LS_RIGHT:
			return gamepad_axis_value(sbc_gamepad_id, gp_axislh) > sbc_deadzone;
		case SBC_GAMEPAD.RS_UP:
			return gamepad_axis_value(sbc_gamepad_id, gp_axisrv) < sbc_deadzone * -1;
		case SBC_GAMEPAD.RS_DOWN:
			return gamepad_axis_value(sbc_gamepad_id, gp_axisrv) > sbc_deadzone;
		case SBC_GAMEPAD.RS_LEFT:
			return gamepad_axis_value(sbc_gamepad_id, gp_axisrh) < sbc_deadzone * -1;
		case SBC_GAMEPAD.RS_RIGHT:
			return gamepad_axis_value(sbc_gamepad_id, gp_axisrh) > sbc_deadzone;
		case SBC_GAMEPAD.LS_CLICK:
			return gamepad_button_check(sbc_gamepad_id, gp_stickl);
		case SBC_GAMEPAD.RS_CLICK:
			return gamepad_button_check(sbc_gamepad_id, gp_stickr);
		case SBC_GAMEPAD.DP_UP:
			return gamepad_button_check(sbc_gamepad_id, gp_padu);
		case SBC_GAMEPAD.DP_DOWN:
			return gamepad_button_check(sbc_gamepad_id, gp_padd);
		case SBC_GAMEPAD.DP_LEFT:
			return gamepad_button_check(sbc_gamepad_id, gp_padl);
		case SBC_GAMEPAD.DP_RIGHT:
			return gamepad_button_check(sbc_gamepad_id, gp_padr);
		case SBC_GAMEPAD.FACE1:
			return gamepad_button_check(sbc_gamepad_id, gp_face1);
		case SBC_GAMEPAD.FACE2:
			return gamepad_button_check(sbc_gamepad_id, gp_face2);
		case SBC_GAMEPAD.FACE3:
			return gamepad_button_check(sbc_gamepad_id, gp_face3);
		case SBC_GAMEPAD.FACE4:
			return gamepad_button_check(sbc_gamepad_id, gp_face4);
		case SBC_GAMEPAD.TRIGGER_L: // ( guess game maker doesn't see triggers as axis???
			return gamepad_button_check(sbc_gamepad_id, gp_shoulderlb);
		case SBC_GAMEPAD.TRIGGER_R:
			return gamepad_button_check(sbc_gamepad_id, gp_shoulderrb);
		case SBC_GAMEPAD.BUMPER_L:
			return gamepad_button_check(sbc_gamepad_id, gp_shoulderl);
		case SBC_GAMEPAD.BUMPER_R:
			return gamepad_button_check(sbc_gamepad_id, gp_shoulderr);
		case SBC_GAMEPAD.START:
			return gamepad_button_check(sbc_gamepad_id, gp_start);
		case SBC_GAMEPAD.SELECT:
			return gamepad_button_check(sbc_gamepad_id, gp_select);
	}
}
