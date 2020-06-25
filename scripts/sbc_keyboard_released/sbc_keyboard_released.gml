/// @description Returns true/false for released state of given key_enum.
/// @param sbc_keyboard_enum

sbc_initialize();
switch (argument[0])
{
	case SBC_KEYBOARD.A:
		return keyboard_check_released(ord("A"));
	case SBC_KEYBOARD.B:
		return keyboard_check_released(ord("B"));
	case SBC_KEYBOARD.C:
		return keyboard_check_released(ord("C"));
	case SBC_KEYBOARD.D:
		return keyboard_check_released(ord("D"));
	case SBC_KEYBOARD.E:
		return keyboard_check_released(ord("E"));
	case SBC_KEYBOARD.F:
		return keyboard_check_released(ord("F"));
	case SBC_KEYBOARD.G:
		return keyboard_check_released(ord("G"));
	case SBC_KEYBOARD.H:
		return keyboard_check_released(ord("H"));
	case SBC_KEYBOARD.I:
		return keyboard_check_released(ord("I"));
	case SBC_KEYBOARD.J:
		return keyboard_check_released(ord("J"));
	case SBC_KEYBOARD.K:
		return keyboard_check_released(ord("K"));
	case SBC_KEYBOARD.L:
		return keyboard_check_released(ord("L"));
	case SBC_KEYBOARD.M:
		return keyboard_check_released(ord("M"));
	case SBC_KEYBOARD.N:
		return keyboard_check_released(ord("N"));
	case SBC_KEYBOARD.O:
		return keyboard_check_released(ord("O"));
	case SBC_KEYBOARD.P:
		return keyboard_check_released(ord("P"));
	case SBC_KEYBOARD.Q:
		return keyboard_check_released(ord("Q"));
	case SBC_KEYBOARD.R:
		return keyboard_check_released(ord("R"));
	case SBC_KEYBOARD.S:
		return keyboard_check_released(ord("S"));
	case SBC_KEYBOARD.T:
		return keyboard_check_released(ord("T"));
	case SBC_KEYBOARD.U:
		return keyboard_check_released(ord("U"));
	case SBC_KEYBOARD.V:
		return keyboard_check_released(ord("V"));
	case SBC_KEYBOARD.W:
		return keyboard_check_released(ord("W"));
	case SBC_KEYBOARD.X:
		return keyboard_check_released(ord("X"));
	case SBC_KEYBOARD.Y:
		return keyboard_check_released(ord("Y"));
	case SBC_KEYBOARD.Z:
		return keyboard_check_released(ord("Z"));
	case SBC_KEYBOARD.ROW_1:
		return keyboard_check_released(ord("1"));
	case SBC_KEYBOARD.ROW_2:
		return keyboard_check_released(ord("2"));
	case SBC_KEYBOARD.ROW_3:
		return keyboard_check_released(ord("3"));
	case SBC_KEYBOARD.ROW_4:
		return keyboard_check_released(ord("4"));
	case SBC_KEYBOARD.ROW_5:
		return keyboard_check_released(ord("5"));
	case SBC_KEYBOARD.ROW_6:
		return keyboard_check_released(ord("6"));
	case SBC_KEYBOARD.ROW_7:
		return keyboard_check_released(ord("7"));
	case SBC_KEYBOARD.ROW_8:
		return keyboard_check_released(ord("8"));
	case SBC_KEYBOARD.ROW_9:
		return keyboard_check_released(ord("9"));
	case SBC_KEYBOARD.ROW_0:
		return keyboard_check_released(ord("0"));
	case SBC_KEYBOARD.SPACE:
		return keyboard_check_released(vk_space);
	case SBC_KEYBOARD.ESC:
		return keyboard_check_released(vk_escape);
	case SBC_KEYBOARD.BACKSPACE:
		return keyboard_check_released(vk_backspace);
	case SBC_KEYBOARD.RETURN:
		return keyboard_check_released(vk_return);
	case SBC_KEYBOARD.TAB:
		return keyboard_check_released(vk_tab);
	case SBC_KEYBOARD.UP:
		return keyboard_check_released(vk_up);
	case SBC_KEYBOARD.DOWN:
		return keyboard_check_released(vk_down);
	case SBC_KEYBOARD.LEFT:
		return keyboard_check_released(vk_left);
	case SBC_KEYBOARD.RIGHT:
		return keyboard_check_released(vk_right);
	case SBC_KEYBOARD.CONTROLL:
		return keyboard_check_released(vk_lcontrol);
	case SBC_KEYBOARD.CONTROLR:
		return keyboard_check_released(vk_rcontrol);
	case SBC_KEYBOARD.ALTL:
		return keyboard_check_released(vk_lalt);
	case SBC_KEYBOARD.ALTR:
		return keyboard_check_released(vk_ralt);
	case SBC_KEYBOARD.SHIFTL:
		return keyboard_check_released(vk_lshift);
	case SBC_KEYBOARD.SHIFTR:
		return keyboard_check_released(vk_rshift);
	case SBC_KEYBOARD.TILDE:
		return keyboard_check_released(ord(0xC0));
	case SBC_KEYBOARD.MINUS:
		return keyboard_check_released(0xBD);
	case SBC_KEYBOARD.PLUS:
		return keyboard_check_released(0xBB);
	case SBC_KEYBOARD.BRACE_OPEN:
		return keyboard_check_released(0xDB);
	case SBC_KEYBOARD.BRACE_CLOSE:
		return keyboard_check_released(0xDD);
	case SBC_KEYBOARD.BACKSLASH:
		return keyboard_check_released(0xDC);
	case SBC_KEYBOARD.COLON:
		return keyboard_check_released(0xBA);
	case SBC_KEYBOARD.QUOTE:
		return keyboard_check_released(0xDE);
	case SBC_KEYBOARD.COMMA:
		return keyboard_check_released(0xBC);
	case SBC_KEYBOARD.PERIOD:
		return keyboard_check_released(0xBE);
	case SBC_KEYBOARD.QMARK:
		return keyboard_check_released(0xBF);
	case SBC_KEYBOARD.INSERT:
		return keyboard_check_released(vk_insert);
	case SBC_KEYBOARD.HOME:
		return keyboard_check_released(vk_home);
	case SBC_KEYBOARD.DELETE:
		return keyboard_check_released(vk_delete);
	case SBC_KEYBOARD.END:
		return keyboard_check_released(vk_end);
	case SBC_KEYBOARD.PGUP:
		return keyboard_check_released(vk_pageup);
	case SBC_KEYBOARD.PGDN:
		return keyboard_check_released(vk_pagedown);
	case SBC_KEYBOARD.PAD_1:
		return keyboard_check_released(vk_numpad1);
	case SBC_KEYBOARD.PAD_2:
		return keyboard_check_released(vk_numpad2);
	case SBC_KEYBOARD.PAD_3:
		return keyboard_check_released(vk_numpad3);
	case SBC_KEYBOARD.PAD_4:
		return keyboard_check_released(vk_numpad4);
	case SBC_KEYBOARD.PAD_5:
		return keyboard_check_released(vk_numpad5);
	case SBC_KEYBOARD.PAD_6:
		return keyboard_check_released(vk_numpad6);
	case SBC_KEYBOARD.PAD_7:
		return keyboard_check_released(vk_numpad7);
	case SBC_KEYBOARD.PAD_8:
		return keyboard_check_released(vk_numpad8);
	case SBC_KEYBOARD.PAD_9:
		return keyboard_check_released(vk_numpad9);
	case SBC_KEYBOARD.PAD_0:
		return keyboard_check_released(vk_numpad0);
	case SBC_KEYBOARD.PAD_SUBTRACT:
		return keyboard_check_released(vk_subtract);
	case SBC_KEYBOARD.PAD_ADD:
		return keyboard_check_released(vk_add);
	case SBC_KEYBOARD.PAD_MULTIPLY:
		return keyboard_check_released(vk_multiply);
	case SBC_KEYBOARD.PAD_DIVIDE:
		return keyboard_check_released(vk_divide);
	case SBC_KEYBOARD.PAD_ENTER:
		return keyboard_check_released(vk_enter);
	case SBC_KEYBOARD.PAD_DECIMAL:
		return keyboard_check_released(vk_decimal);
	case SBC_KEYBOARD.F1:
		return keyboard_check_released(0x70);
	case SBC_KEYBOARD.F2:
		return keyboard_check_released(0x71);
	case SBC_KEYBOARD.F3:
		return keyboard_check_released(0x72);
	case SBC_KEYBOARD.F4:
		return keyboard_check_released(0x73);
	case SBC_KEYBOARD.F5:
		return keyboard_check_released(0x74);
	case SBC_KEYBOARD.F6:
		return keyboard_check_released(0x75);
	case SBC_KEYBOARD.F7:
		return keyboard_check_released(0x76);
	case SBC_KEYBOARD.F8:
		return keyboard_check_released(0x77);
	case SBC_KEYBOARD.F9:
		return keyboard_check_released(0x78);
	case SBC_KEYBOARD.F10:
		return keyboard_check_released(0x79);
	case SBC_KEYBOARD.F11:
		return keyboard_check_released(0x7A);
	case SBC_KEYBOARD.F12:
		return keyboard_check_released(0x7B);
	case SBC_KEYBOARD.F13:
		return keyboard_check_released(0x7C);
	case SBC_KEYBOARD.F14:
		return keyboard_check_released(0x7D);
	case SBC_KEYBOARD.F15:
		return keyboard_check_released(0x7E);
	case SBC_KEYBOARD.F16:
		return keyboard_check_released(0x7F);
	case SBC_KEYBOARD.F17:
		return keyboard_check_released(0x80);
	case SBC_KEYBOARD.F18:
		return keyboard_check_released(0x81);
	case SBC_KEYBOARD.F19:
		return keyboard_check_released(0x82);
	case SBC_KEYBOARD.F20:
		return keyboard_check_released(0x83);
	case SBC_KEYBOARD.F21:
		return keyboard_check_released(0x84);
	case SBC_KEYBOARD.F22:
		return keyboard_check_released(0x85);
	case SBC_KEYBOARD.F23:
		return keyboard_check_released(0x86);
	case SBC_KEYBOARD.F24:
		return keyboard_check_released(0x87);
}