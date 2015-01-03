/**
 * Sélectionne un objet à charger dans un transporteur
 *
 * @param 0 l'objet à sélectionner
 */

if (R3F_LOG_mutex_local_verrou) then
{
	player globalChat STR_R3F_LOG_mutex_action_en_cours;
}
else
{
//Start donator part
private ["_objet","_ProtectedPlayers","_IsProtected"];
	_ProtectedPlayers = [];
	_IsProtected = false;
	_objet = _this select 0;

	_IsProtected = false;
	_IsAllowed = false;

	{
		if(((_objet distance getMarkerPos  (_x select 3)) <  (_x select 1))) then
		{	
			_IsProtected = true;			
			if ((getPlayerUID player) in (_x select 5)) then {				
				_IsAllowed = true;
			};
		};
	} forEach call Donators;

	if ((_IsProtected) && !(_IsAllowed)) exitwith {	 
		hint "This base is protected by donator status"; R3F_LOG_mutex_local_verrou = false;
	};
//End donator part

	_tempVar = false;
	if(!isNil {(_this select 0) getVariable "R3F_Side"}) then {
		if(playerSide != ((_this select 0) getVariable "R3F_Side")) then {
			{if(side _x ==  ((_this select 0) getVariable "R3F_Side") && alive _x && _x distance (_this select 0) < 150) exitwith {_tempVar = true;};} foreach AllUnits;
		};
	};
	if(_tempVar) exitwith {hint format["This object belongs to %1 and they're nearby you cannot take this.", (_this select 0) getVariable "R3F_Side"]; R3F_LOG_mutex_local_verrou = false;};

	R3F_LOG_mutex_local_verrou = true;

	R3F_LOG_objet_selectionne = _this select 0;
	player globalChat format [STR_R3F_LOG_action_selectionner_objet_charge_fait, getText (configFile >> "CfgVehicles" >> (typeOf R3F_LOG_objet_selectionne) >> "displayName")];

	R3F_LOG_mutex_local_verrou = false;
};
