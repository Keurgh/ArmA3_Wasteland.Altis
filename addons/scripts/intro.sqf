//	@file Version: 1.0
//	@file Name: intro.sqf
//	@file Author: Cael817, original file by HellsGateGaming.com and IT07
//	@file Created: 20140724 19:34

_onScreenTime = 8;

sleep 60;

_role1 = "Welcome to NL United Tank'n'Spank Dutch Altis A3Wasteland";
_role1names = ["This server is under continuous configuration. We are doing our best to keep maintenance restarts to a minimum.","Please understand that database resets and errors can occur."];
_role2 = "Server Owners";
_role2names = ["LouD - Craven"];
_role3 = "Server Restarts";
_role3names = ["This server restarts at 06.00, 12.00, 18.00 and 24.00 hours CET.","Type !time in Global Chat to see the system time.","Type !upt in Global Chat to see server uptime."];
_role4 = "Links";
_role4names = ["Web and forum: http://www.nl-united.nl","Teamspeak: ts.nl-united.nl (Primary language Dutch)"];
_role5 = "Feedback";
_role5names = ["Please report any bugs/feedback on our website forum"];
_role6 = "Object saving";
_role6names = ["Objects are saved for 5 days maximum. This includes baseparts and crates. If you resave them 5 new days start."];
_role7 = "Vehicle saving";
_role7names = ["Vehicles are automaticly saved when bought from stores or won from missions. They remain on the server if used at least once every 48 hours."];
_role8 = "Vehicle ownership";
_role8names = ["Bought vehicles are owned by the buyer.","Ownership of found and mission vehicles can be changed for a price at the change ownership points."];
_role9 = "Vehicle locking";
_role9names = ["Vehicles that are bought and owned can only be locked by the owner.","Owned vehicles spawn in locked after a restart.","All locked vehicles can be broken in to by anyone with the right tools."];
_role10 = "Pretty Please";
_role10names = ["Understand that this is an alpha mission and we added stuff ourselves that isn't vanilla so don't blame the devs for the odds and ends."];
_role11 = "Earplugs";
_role11names = ["The Earplugs script is now bound to the End key. So press the End key to put them in and take them out."];

{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.50' color='#f2cb0b' align='left'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='left'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [

[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names],
[_role7, _role7names],
[_role8, _role8names],
[_role9, _role9names],
[_role10, _role10names],
[_role11, _role11names]
];