// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: bases.sqf
//	@file Author: LouD, Micovery
//	@file Description: Admin base script
//  @file Special thanks to Micovery for most of the code!

diag_log format["Loading NLU base script functions..."];

LCK_admins = [
	"76561197968317840", // LouD
	"76561197967203106"  // Craven
];

LCK_basekeys = ["Insidekey","Outsidekey"];
LCK_shopkeys = ["Shopkey","Shopkey_1"];
LCK_planekeys = ["planedoor00","planedoor01"];
LCK_hangarkeys = ["nlukey1","nlukey2","nlukey3","nlukey4","nlukey5","nlukey6","nlukey7","nlukey8","nlukey9","nlukey10","nlukey11","nlukey12"];
LCK_adminhangarkeys = ["hangarlockoutside1","hangarlockoutside2","hangarlockinside1","hangarlockinside2"];

LCK_basearray = ["door1","door2","door3"];
LCK_shoparray = ["nlushopdoor00","nlushopdoor01","nlushopdoor02"];
LCK_planearray = ["planedoor00","planedoor01"];
LCK_hangararray = ["nluhangardoor11","nluhangardoor12","nluhangardoor13","nluhangardoor14","nluhangardoor15","nluhangardoor21","nluhangardoor22","nluhangardoor23","nluhangardoor24","nluhangardoor25","nluhangardoor31","nluhangardoor32","nluhangardoor33","nluhangardoor34","nluhangardoor35","nluhangardoor41","nluhangardoor42","nluhangardoor43","nluhangardoor44","nluhangardoor45","nluhangardoor51","nluhangardoor52","nluhangardoor53","nluhangardoor54","nluhangardoor55","nluhangardoor61","nluhangardoor62","nluhangardoor63","nluhangardoor64","nluhangardoor65"];
LCK_adminhangararray = ["hangardoor11","hangardoor12","hangardoor13","hangardoor14","hangardoor15","hangardoor21","hangardoor22","hangardoor23","hangardoor24","hangardoor25"];

LCK_Baseunlock = {
	{ 
	private["_object_name", "_object"];
	_object_name = _x;
	_object = missionNamespace getvariable _object_name;

	if (!isNil "_object" && {!isNull _object}) then {
	 [[netId _object, true], "A3W_fnc_hideObjectGlobal", _object] call A3W_fnc_MP;
	};
     
	} forEach LCK_basearray;

	hint format["The base is unlocked"];
};

LCK_Baselock = {
	{ 
	private["_object_name", "_object"];
	_object_name = _x;
	_object = missionNamespace getvariable _object_name;

	if (!isNil "_object" && {!isNull _object}) then {
	 [[netId _object, false], "A3W_fnc_hideObjectGlobal", _object] call A3W_fnc_MP;
	};
     
	} forEach LCK_basearray;

	hint format["The base is locked"];
};

LCK_Shopunlock = {
	{ 
	private["_object_name", "_object"];
	_object_name = _x;
	_object = missionNamespace getvariable _object_name;

	if (!isNil "_object" && {!isNull _object}) then {
	 [[netId _object, true], "A3W_fnc_hideObjectGlobal", _object] call A3W_fnc_MP;
	};
     
	} forEach LCK_shoparray;

	hint format["The shops are unlocked"];
};

LCK_Shoplock = {
	{ 
	private["_object_name", "_object"];
	_object_name = _x;
	_object = missionNamespace getvariable _object_name;

	if (!isNil "_object" && {!isNull _object}) then {
	 [[netId _object, false], "A3W_fnc_hideObjectGlobal", _object] call A3W_fnc_MP;
	};
     
	} forEach LCK_shoparray;

	hint format["The shops are locked"];
};

LCK_Planeunlock = {
	{ 
	private["_object_name", "_object"];
	_object_name = _x;
	_object = missionNamespace getvariable _object_name;

	if (!isNil "_object" && {!isNull _object}) then {
	 [[netId _object, true], "A3W_fnc_hideObjectGlobal", _object] call A3W_fnc_MP;
	};
     
	} forEach LCK_planearray;

	hint format["The plane doors are unlocked"];
};

LCK_Planelock = {
	{ 
	private["_object_name", "_object"];
	_object_name = _x;
	_object = missionNamespace getvariable _object_name;

	if (!isNil "_object" && {!isNull _object}) then {
	 [[netId _object, false], "A3W_fnc_hideObjectGlobal", _object] call A3W_fnc_MP;
	};
     
	} forEach LCK_planearray;

	hint format["The plane doors are locked"];
};

LCK_Hangarunlock = {
	{ 
	private["_object_name", "_object"];
	_object_name = _x;
	_object = missionNamespace getvariable _object_name;

	if (!isNil "_object" && {!isNull _object}) then {
	 [[netId _object, true], "A3W_fnc_hideObjectGlobal", _object] call A3W_fnc_MP;
	};
     
	} forEach LCK_hangararray;

	hint format["Hangars are unlocked"];
};

LCK_Hangarlock = {
	{
	private["_object_name", "_object"];
	_object_name = _x;
	_object = missionNamespace getvariable _object_name;

	if (!isNil "_object" && {!isNull _object}) then {
	 [[netId _object, false], "A3W_fnc_hideObjectGlobal", _object] call A3W_fnc_MP;
	};
     
	} forEach LCK_hangararray;

	hint format["Hangars are locked"];
};

LCK_AdminHangarunlock = {
	{ 
	private["_object_name", "_object"];
	_object_name = _x;
	_object = missionNamespace getvariable _object_name;

	if (!isNil "_object" && {!isNull _object}) then {
	 [[netId _object, true], "A3W_fnc_hideObjectGlobal", _object] call A3W_fnc_MP;
	};
     
	} forEach LCK_adminhangararray;

	hint format["Hangars are unlocked"];
};

LCK_AdminHangarlock = {
	{ 
	private["_object_name", "_object"];
	_object_name = _x;
	_object = missionNamespace getvariable _object_name;

	if (!isNil "_object" && {!isNull _object}) then {
	 [[netId _object, false], "A3W_fnc_hideObjectGlobal", _object] call A3W_fnc_MP;
	};
     
	} forEach LCK_adminhangararray;

	hint format["Hangars are locked"];
};

arrays_intersect = {
	private["_arr1", "_arr2"];
	_arr1 = _this select 0;
	_arr2 = _this select 1;
	
	private["_result"];
	_result = false;

	{
		private["_item1"];
		_item1 = _x;
		_item1 = if (typeName _item1 != typeName "") then {str(_item1)} else {_item1};

//		player groupChat format["_item1 = %1", _item1]; // Uncomment this line if you want to test if any object is found
		{
			private["_item2"];
			_item2 = _x;
			_item2 = if (typeName _item2 != typeName "") then {str(_item2)} else {_item2};
  
//			player groupChat format["_item1 = %1, _item2 = %2", _item1, _item2]; // Uncomment this line if you want to test if any object is found
  
			if (_item1 == _item2) exitWith {
			_result = true;
			};
		} forEach _arr2;

		if (_result) exitWith {true};
	} forEach _arr1;
  
	(_result)
};

showLockUnlockBaseAction = {
	private["_objects"];
	_objects =(nearestObjects [player, ["Land_InfoStand_V1_F"], 3]);
	if (not([_objects, LCK_basekeys] call arrays_intersect)) exitWith {false};

	(true)
};

showLockUnlockShopAction = {
	private["_objects"];
	_objects =(nearestObjects [player, ["Land_InfoStand_V1_F"], 3]);
	if (not([_objects, LCK_shopkeys] call arrays_intersect)) exitWith {false};

	(true)
};

showLockUnlockPlaneAction = {
	private["_objects"];
	_objects =(nearestObjects [player, ["Land_Mil_WallBig_4m_F"], 3]);
	if (not([_objects, LCK_planekeys] call arrays_intersect)) exitWith {false};

	(true)
};

showLockUnlockHangarAction = {
	private["_objects"];
	_objects =(nearestObjects [player, ["Land_InfoStand_V1_F"], 3]);
	if (not([_objects, LCK_hangarkeys] call arrays_intersect)) exitWith {false};

	(true)
};

showLockUnlockAdminHangarAction = {
	private["_objects"];
	_objects =(nearestObjects [player, ["Land_InfoStand_V1_F"], 3]);
	if (not([_objects, LCK_adminhangarkeys] call arrays_intersect)) exitWith {false};

	(true)
};
	
LCK_Actions = {
	private ["_unit"];
	_unit = _this select 0;
	_unit addAction ["<t color=""#00FFFF""><img image='client\icons\r3f_unlock.paa'/> Unlock base", LCK_Baseunlock, "", 1, false, false, "","(call showLockUnlockBaseAction)"];
	_unit addAction ["<t color=""#00FFFF""><img image='client\icons\r3f_lock.paa'/> Lock base", LCK_Baselock, "", 1, false, false, "","(call showLockUnlockBaseAction)"];
	_unit addAction ["<t color=""#00FFFF""><img image='client\icons\r3f_unlock.paa'/> Unlock shops", LCK_Shopunlock, "", 1, false, false, "","(call showLockUnlockShopAction)"];
	_unit addAction ["<t color=""#00FFFF""><img image='client\icons\r3f_lock.paa'/> Lock shops", LCK_Shoplock, "", 1, false, false, "","(call showLockUnlockShopAction)"];
	_unit addAction ["<t color=""#00FFFF""><img image='client\icons\r3f_unlock.paa'/> Unlock plane doors", LCK_Planeunlock, "", 1, false, false, "","(call showLockUnlockPlaneAction)"];
	_unit addAction ["<t color=""#00FFFF""><img image='client\icons\r3f_lock.paa'/> Lock plane doors", LCK_Planelock, "", 1, false, false, "","(call showLockUnlockPlaneAction)"];
	_unit addAction ["<t color=""#00FFFF""><img image='client\icons\r3f_unlock.paa'/> Unlock NLU Hangars", LCK_Hangarunlock, "", 1, false, false, "","(call showLockUnlockHangarAction)"];
	_unit addAction ["<t color=""#00FFFF""><img image='client\icons\r3f_lock.paa'/> Lock NLU Hangars", LCK_Hangarlock, "", 1, false, false, "","(call showLockUnlockHangarAction)"];
	
	if ((getPlayerUID player) in LCK_admins) then {
	_unit = _this select 0;
	_unit addAction ["<t color=""#00FFFF""><img image='client\icons\r3f_unlock.paa'/> Unlock Admin Hangars", LCK_AdminHangarunlock, "", 1, false, false, "","(call showLockUnlockAdminHangarAction)"];
	_unit addAction ["<t color=""#00FFFF""><img image='client\icons\r3f_lock.paa'/> Lock Admin Hangars", LCK_AdminHangarlock, "", 1, false, false, "","(call showLockUnlockAdminHangarAction)"];
	};
};
//=======================
BaseLockInitialized = true;
