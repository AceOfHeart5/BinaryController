/// @description Initializes global variables for Simple Binary Controller

/*
The actions map stores the "down", and "pressed" state of all actions. The key
for the map is the name of the action. This value can be any type the user chooses,
like string or an enumerator. The value of the map is a 2 length array, the 0 index
stores the down state, and the 1 index stores the pressed state. 
*/
global.sbc_actions = ds_map_create();
/* 
The actions_prev stores the "down" value of each action the previous frame. This
is used to determine if an action is "pressed".
*/
global.sbc_actions_prev = ds_map_create();
/*
Both of the mapping maps use an action as the key, and a resizable list as the 
value. This lets us assign multiple inputs to one action.
*/
global.sbc_mappings_keyboard = ds_map_create();
global.sbc_mappings_gamepad = ds_map_create();

global.sbc_gamepad_using = false; // using gamepad or keyboard
global.sbc_gamepad_id = undefined;
global.sbc_gamepad_deadzone = 0.5;

// we need to keep track of axis values previous frame (for determinig pressed)
global.sbc_gamepad_axis_prev = array_create(8);

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
	TRIGGER_R,
	TRIGGER_L,
	BUMPER_R,
	BUMPER_L,
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