// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: init.sqf
//	@file Author: LouD, Micovery
//	@file Description: Admin base script
//  @file Special thanks to Micovery for most of the code!

LCK_nlunited = [
	"76561197968317840", // LouD
	"76561197967203106", // Craven
	"76561197995969095", // Klompie88
	"76561197960274786", // iNDope
	"76561197980472554", // Piew
	"76561198007346102", // HeavenHell
	"76561198017572580", // KEOS
	"76561198117317493", // XtremeB3
	"76561198018379131", // LaZoRr
	"76561198052069957", // Melvin
	"76561197979730277", // Dimitri
	"76561198016159328", // Kemosabeh
	"76561198030932144", // Glennoz
	"76561197989563790", // Jimmy
	"76561197973824467", // Twistit
	"76561198043552836", // Nitroade
	"76561198082266108", // Remie
	"76561197995955330", // Pvt. Murder
	"76561198045856719", // Akame
	"76561198022640664", // Rockslide
	"76561197971344257", // KingoftheNOkill
	"76561198122292581", // robert
	"76561198072364116"  // Joshua
];

if ((getPlayerUID player) in LCK_nlunited) then {
diag_log format["Initialising NLU base script functions..."];
waitUntil {time > 0};
execVM "addons\bases\bases.sqf";
waitUntil {!isNil "BaseLockInitialized"};
[player] call LCK_Actions;
};