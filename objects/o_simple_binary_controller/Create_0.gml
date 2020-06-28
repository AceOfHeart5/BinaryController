// SIMPLE BINARY CONTROLLER
// BY 0rd1n4ry

/*
The Simple Binary Controller (SBC) allows the user to quickly and easily add simple
on/off style inputs to a game. SBC supports keyboard input and direct x 
devices.

QUICK START GUIDE

sbc_action_add()
Use this script to add an action to the controller. The action parameter in 
this script is used as a key for a map. Therefore, the action can be any data 
type, like a string or an enum, but all actions must be the same data type.

sbc_mapping_add_kb()
sbc_mapping_add_gp()
Buttons can than be mapped to the actions using sbc_mapping_add_kb for keyboard
input, and sbc_mapping_add_gp for gamepad input. The parameters for these scripts 
are the action, and an SBC enum for the desired button or key. SBC uses its own
enums in place of the game maker enums. The script will not work properly if you
try to use a game maker enum in the arguments. 

sbc_down(), sbc_pressed(), and sbc_released()
Use these scripts to check the state of an action. 
*/

sbc_mappings_keyboard = ds_map_create(); // key is action, value is resizable list of key enums
sbc_mappings_gamepad = ds_map_create(); // key is action, value is resizable list of button enums
sbc_gamepad_using = false; // using gamepad or keyboard
sbc_gamepad_id = undefined;
sbc_deadzone = 0.5;

/*
The state of all actions needs to be stored at the end of each frame to be referenced in the next. 
This map doubles as the map that stores all actions added to the controller.
*/
sbc_actions_prevdown = ds_map_create();
sbc_axis_prevdown = array_create(8, false);


// custom enums to make adding actions easier/clearer
enum SBC_GAMEPAD 
{
	LS_UP,
	LS_DOWN,
	LS_LEFT,
	LS_RIGHT,
	RS_UP,
	RS_DOWN,
	RS_LEFT,
	RS_RIGHT,
	LS_CLICK,
	RS_CLICK,
	DP_UP,
	DP_DOWN,
	DP_LEFT,
	DP_RIGHT,
	FACE1, // A (xbox)
	FACE2, // B (xbox)
	FACE3, // X (xbox)
	FACE4, // Y (xbox)
	TRIGGER_L,
	TRIGGER_R,
	BUMPER_L,
	BUMPER_R,
	START,
	SELECT,
}

enum SBC_KEYBOARD 
{
	A,
	B,
	C,
	D,
	E,
	F,
	G,
	H,
	I,
	J,
	K,
	L,
	M,
	N,
	O,
	P,
	Q,
	R,
	S,
	T,
	U,
	V,
	W,
	X,
	Y,
	Z,
	ROW_1,
	ROW_2,
	ROW_3,
	ROW_4,
	ROW_5,
	ROW_6,
	ROW_7,
	ROW_8,
	ROW_9,
	ROW_0,
	SPACE,
	ESC,
	BACKSPACE,
	RETURN,
	TAB,
	UP,
	DOWN,
	LEFT,
	RIGHT,
	CONTROLL,
	CONTROLR,
	ALTL,
	ALTR,
	SHIFTL,
	SHIFTR,
	TILDE,
	MINUS,
	PLUS,
	BRACE_OPEN,
	BRACE_CLOSE,
	BACKSLASH,
	COLON,
	QUOTE,
	COMMA,
	PERIOD,
	QMARK,
	INSERT,
	HOME,
	DELETE,
	END,
	PGUP,
	PGDN,
	PAD_1,
	PAD_2,
	PAD_3,
	PAD_4,
	PAD_5,
	PAD_6,
	PAD_7,
	PAD_8,
	PAD_9,
	PAD_0,
	PAD_SUBTRACT,
	PAD_ADD,
	PAD_MULTIPLY,
	PAD_DIVIDE,
	PAD_ENTER,
	PAD_DECIMAL,
	F1,
	F2,
	F3,
	F4,
	F5,
	F6,
	F7,
	F8,
	F9,
	F10,
	F11,
	F12,
	F13,
	F14,
	F15,
	F16,
	F17,
	F18,
	F19,
	F20,
	F21,
	F22,
	F23,
	F24
}
