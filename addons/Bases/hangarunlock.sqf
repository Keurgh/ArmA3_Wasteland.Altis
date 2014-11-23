_admins = [
"76561197968317840", // LouD
"76561197967203106"  // Craven
];

if ((getPlayerUID player) in _admins) then {
  hangardoor11 hideObject true;
  hangardoor12 hideObject true;
  hangardoor13 hideObject true;
  hangardoor14 hideObject true;
  hangardoor15 hideObject true;
  hangardoor21 hideObject true;
  hangardoor22 hideObject true;
  hangardoor23 hideObject true;
  hangardoor24 hideObject true;
  hangardoor25 hideObject true;
  hint format["Hangars are unlocked"];
  } else {
  hint format["You have no Access!"];
 };
