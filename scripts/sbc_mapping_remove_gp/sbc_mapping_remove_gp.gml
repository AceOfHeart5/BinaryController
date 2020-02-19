/// @description Remove button from action mapping for gamepad
/// @param action
/// @param sbc_gamepad_enum

sbc_ensureinit();

if (!ds_map_exists(global.sbc_mappings_gamepad, argument0))
{
	show_error("sbc_mapping_remove_gp failed. Simple Binary Controller action does not exist!", true);
}

var _list = ds_map_find_value(global.sbc_mappings_gamepad, argument0);
var _i = ds_list_find_index(_list, argument1);

if (_i < 0)
{
	show_error("sbc_mapping_remove_gp failed. Input is not mapped to action!", true);
}

ds_list_delete(_list, _i);