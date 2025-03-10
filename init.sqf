// ARMA3.RU Mission Template
enableSaving [false, false]; // Не надо ничего сейвить, мы ж не в сингл играем
0 = execVM "scripts\facesOfWar.sqf"; // Скрипт на замену лиц
0 = execVM "add_med.sqf"; // Дадим немножко медицины и беруши
setTerrainGrid 3.125; // Красивая отрисовка земли вдали

// Init modules
#include "a3a_modules.hpp"
{
	[] execVM "A3A_MODULES\" + _x + "\init.sqf";
} forEach A3A_MODULES;

if (isServer) then
{
	[] call WST_fnc_initPylonsManager;
};

[
	[
		KS,
		[
			["BMP_platoon", "Мотопехотный взвод", true, "Мотопехотный взвод", ["north", "south"], []]
		]
	]
] execVM "scripts\fnc_kik_spawnChoice.sqf";