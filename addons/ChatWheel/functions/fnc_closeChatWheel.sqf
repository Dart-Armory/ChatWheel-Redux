#include "..\script_component.hpp"
/*
 * Author: DartRuffian
 * Opens the Chat Wheel
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * call CWR_ChatWheel_fnc_openChatWheel;
 */

params [];
private ["_messagesCtrl"];

_display = uiNamespace getVariable [QCLASS(RscChatWheel), displayNull];
if (isNull _display) exitWith {WARNING("Attempted to close Chat Wheel when not open.")};

_display closeDisplay IDC_CANCEL;
[QGVAR(menuToggled), [false]] call CBA_fnc_localEvent;