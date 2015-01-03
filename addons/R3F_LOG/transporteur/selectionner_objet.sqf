/**
 * Sélectionne un objet à charger dans un transporteur
 * 
 * @param 0 l'objet à sélectionner
 */

if (R3F_LOG_mutex_local_verrou) then
{
	hintC STR_R3F_LOG_mutex_action_en_cours;
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

	R3F_LOG_mutex_local_verrou = true;
	
	R3F_LOG_objet_selectionne = _this select 0;
	systemChat format [STR_R3F_LOG_action_selectionner_objet_fait, getText (configFile >> "CfgVehicles" >> (typeOf R3F_LOG_objet_selectionne) >> "displayName")];
	
	[R3F_LOG_objet_selectionne, player] call R3F_LOG_FNCT_definir_proprietaire_verrou;
	
	// Déselectionner l'objet si le joueur n'en fait rien
	[] spawn
	{
		while {!isNull R3F_LOG_objet_selectionne} do
		{
			if (!alive player) then
			{
				R3F_LOG_objet_selectionne = objNull;
			}
			else
			{
				if (vehicle player != player || (player distance R3F_LOG_objet_selectionne > 40) || !isNull R3F_LOG_joueur_deplace_objet) then
				{
					R3F_LOG_objet_selectionne = objNull;
				};
			};
			
			sleep 0.2;
		};
	};
	
	R3F_LOG_mutex_local_verrou = false;
};