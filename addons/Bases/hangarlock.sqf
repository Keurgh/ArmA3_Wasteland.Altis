_admins = [
"76561197968317840", // LouD
"76561197967203106"  // Craven
];

if ((getPlayerUID player) in _admins) then {
  hangardoor11 hideObject false; 
  hangardoor12 hideObject false;
  hangardoor13 hideObject false;
  hangardoor14 hideObject false;
  hangardoor15 hideObject false;
  hangardoor21 hideObject false; 
  hangardoor22 hideObject false;
  hangardoor23 hideObject false;
  hangardoor24 hideObject false;
  hangardoor25 hideObject false;
  hint format["Hangars are locked"];
 } else {
  hint format["You have no Access!"];
 };
