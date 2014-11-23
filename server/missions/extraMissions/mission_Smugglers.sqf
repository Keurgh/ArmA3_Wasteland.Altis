// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: mission_Smugglers.sqf
//	@file Author: JoSchaap, AgentRev, LouD

if (!isServer) exitwith {};
#include "extraMissionDefines.sqf";

private ["_positions", "_smugglerVeh", "_vehicle1", "_vehicle2", "_boxes1", "_currBox1", "_box1", "_boxes2", "_currBox2", "_box2", "_cash1", "_cash2"];

_setupVars =
{
	_missionType = "Weapon Smugglers";
	_positions = [[12540.6,16320.7,0],[3060.51,13173.3,0],[23870.8,15973,0],[16128.1,16995.5,0],[16748.2,13640.6,0],[14025,12982.7,0],[21811.1,6011.82,0]];

	_missionPos = _positions call BIS_fnc_SelectRandom;
};

_setupObjects =
{
	_smugglerVeh = ["B_G_Offroad_01_armed_F"] call BIS_fnc_selectRandom; 

	_vehicle1 = [_smugglerVeh,[(_missionPos select 0) - 5, (_missionPos select 1) + 10,0],0.5,1,0,"NONE"] call createMissionVehicle;
	_vehicle1 setVariable [call vChecksum, true, false];
	_vehicle1 setFuel 1;
	_vehicle1 setVehicleLock "UNLOCKED";
	_vehicle1 setVariable ["R3F_LOG_disabled", false, true];
	_vehicle1 setVariable ["A3W_missionVehicle", true];	
	
	_vehicle2 = [_smugglerVeh,[(_missionPos select 0) - 5, (_missionPos select 1) - 10,0],0.5,1,0,"NONE"] call createMissionVehicle;
	_vehicle2 setVariable [call vChecksum, true, false];
	_vehicle2 setFuel 1;
	_vehicle2 setVehicleLock "UNLOCKED";
	_vehicle2 setVariable ["R3F_LOG_disabled", false, true];
	_vehicle2 setVariable ["A3W_missionVehicle", true];
	
	_boxes1 = ["Box_IND_Wps_F","Box_NATO_Wps_F","Box_IND_WpsLaunch_F"];
	_currBox1 = _boxes1 call BIS_fnc_selectRandom;
	_box1 = createVehicle [_currBox1,[(_missionPos select 0), (_missionPos select 1),0],[], 0, "NONE"];
	_box1 allowDamage false;
	_box1 setVariable ["R3F_LOG_disabled", true, true];
	
	_boxes2 = ["Box_IND_Wps_F","Box_NATO_Wps_F","Box_IND_WpsLaunch_F"];
	_currBox2 = _boxes2 call BIS_fnc_selectRandom;
	_box2 = createVehicle [_currBox2,[(_missionPos select 0) - 5, (_missionPos select 1) - 8,0],[], 0, "NONE"];
	_box2 allowDamage false;
	_box2 setVariable ["R3F_LOG_disabled", true, true];
	
	//Fake Money
	for "_i" from 1 to 3 do
	{
		_cash1 = createVehicle ["Land_Money_F",[(_missionPos select 0), (_missionPos select 1) - 5,0],[], 0, "NONE"];
		_cash1 setPos ([_missionPos, [[2 + random 3,0,0], random 360] call BIS_fnc_rotateVector2D] call BIS_fnc_vectorAdd);
		_cash1 setDir random 360;
		_cash1 setVariable ["money", 1000, true];
		_cash1 setVariable ["owner", "world", true];
	};
	
	//Money
	for "_i" from 1 to 3 do
	{
		_cash2 = createVehicle ["Land_Money_F",[(_missionPos select 0), (_missionPos select 1) + 5,0],[], 0, "NONE"];
		_cash2 setPos ([_missionPos, [[2 + random 3,0,0], random 360] call BIS_fnc_rotateVector2D] call BIS_fnc_vectorAdd);
		_cash2 setDir random 360;
		_cash2 setVariable ["cmoney", 5000, true];
		_cash2 setVariable ["owner", "world", true];
	};
	
	_aiGroup = createGroup CIVILIAN;
	[_aiGroup,_missionPos] spawn createsmugglerGroup;

	_aiGroup setCombatMode "RED";
	_aiGroup setBehaviour "COMBAT";
	
	_missionPicture = getText (configFile >> "CfgVehicles" >> _smugglerVeh >> "picture");
	
	_missionHintText = format ["A group of weapon smugglers have been spotted. Stop the weapon deal and take their weapons and money.", extraMissionColor];
};
	
_waitUntilMarkerPos = nil;
_waitUntilExec = nil;
_waitUntilCondition = nil;

_failedExec =
{
	// Mission failed
	{ deleteVehicle _x } forEach [_box1, _box2, _cash1, _cash2, _vehicle1, _vehicle2];
};

_successExec =
{
	// Mission completed
	_vehicle1 lock 1;
	_vehicle2 lock 1;
	{ _x setVariable ["R3F_LOG_disabled", false, true] } forEach [_box1, _box2, _vehicle1, _vehicle2];

	_successHintMessage = format ["The smugglers are dead, the weapons and money are yours!"];
};

_this call extraMissionProcessor;