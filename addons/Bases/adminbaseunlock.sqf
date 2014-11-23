_nlunited = [
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
"76561197997722640", // Shivib
"76561198022640664", // Rockslide
"76561197964609822"  // Tinux
];

if ((getPlayerUID player) in _nlunited) then {
  door1 hideObject true; 
  door2 hideObject true;
  door3 hideObject true;
  nlushopdoor00 hideObject true;
  hint format["Base is unlocked"];
 } else {
  hint format["You have no Access!"];
 };
