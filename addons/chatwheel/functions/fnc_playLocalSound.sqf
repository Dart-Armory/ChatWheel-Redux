#include "..\script_component.hpp"
/*
 * Author: Leopard20
 * Edited By DartRuffian
 * Plays a sound local to the current system.
 *
 * Arguments:
 * 0: File path to the sound to play <STRING>
 * 1: Unit to play the sound on <OBJECT>
 * 2: Base volume for sound <NUMBER>
 * 3: Base pitch for sound <NUMBER>
 *
 * Return Value:
 * None
 *
 * Example:
 * ["file.wss", player] call FUNC(playLocalSound);
 */

params [
    ["_file", "", [""]],
    ["_positionASL", [0,0,0], [[]], 3],
    ["_volume", 1, [0]],
    ["_pitch", 1, [0]]
];
TRACE_2("fnc_playLocalSound",_file,_positionASL);

if (GVAR(voice_enabled)) then {
    playSound3D [_file, objNull, false, _positionASL, GVAR(voice_volume) * _volume, _pitch, 0, 0, true];
};