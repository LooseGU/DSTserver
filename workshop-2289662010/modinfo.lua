name = "Rail Cart"
description = [[
Add rail carts to the game

Make your Railway Track Tool, place your Railway Tracks, ACTIVATE them and hit the gas!
-- To activate the track just hit the action button close to it.

CONTROLS:
-- Move Up: Accelerate
-- Move Down: Brake
-- Move Left/Right: Change direction (if the rail cart is not moving)
-- Attack: Change the camera angle
-- Action: Leave the rail cart

EXTRA CONTROLS:
-- Hold brake when not moving: Leave the rail cart
-- Hold left/right when moving: Brake

How to place tracks:
-- Build the Railway Track Tool and equip it;
-- This tool has an inventory to place the railway tracks (similar to Walter Slingshot);
-- Place the railway tracks inside the tool inventory and the placement helper will appear;
-- When you cast with this tool, the railway track will placed;
-- If casted close to another railway track, they will line-up.

Railway Track Tool recipe:
-- 1 Gears;
-- 2 Gold Nuggets;
-- 1 Spear
-- Recipe Tab at Alchemy Engine

Railway Track types:
-- Railway Track: The simpliest railway track, without any special feature;
-- Floater Railway Track: This railway track can be placed on water, but not on the ground;
-- Booster Railway Track: This railway track will increase your speed;
-- Damper Railway Track: This one will damp your speed;
-- Reverser Railway Track: And this one will change the moving direction.

Railway Track recipes:
-- 6 Railway Track: 1 Boards, 1 Cut Stone, 1 Flint;
-- 6 Floater Railway Track: 1 Boards, 1 Cut Stone, 1 Mosquito Sack;
-- 6 Booster Railway Track: 1 Boards, 1 Cut Stone, 12 Gold Nugget;
-- 6 Damper Railway Track: 1 Boards, 1 Cut Stone, 1 Charcoal;
-- 6 Reverser Railway Track: 1 Boards, 1 Cut Stone, 1 Pig Skin.
-- Structure Tab at Alchemy Engine


Mod Options:
-- Modify the railway track craft amount;
-- Modify the acceleration factor;
-- Modify the friction factor;
-- Modify the brake power;
-- Enable/Disable the rail cart sounds;
-- Enable/Disable the rail cart smoke;
-- (New in v 1.04) Make the railway tracks fireproof;

Extra features:
-- A speedometer will show in the screen when you get in the rail cart, showing the speed in tiles per second;
-- If you hit the railway edge you will fall from the track; Be caferul to not fall on the water.

Changelog:
-- v1.05: Added some compatibility with large-inventory mods (BETA);
-- v1.04: Added an option to make the railway tracks fireproof;
-- v1.03: Fixed the client-side features for Cave-Less worlds (Thanks Atobá Azul);
-- v1.02: Changed the way that the client-side railway track tool verification were made;
Fixed the player arm hiding when no tools are in the hand;
-- v1.01: Minor corrections;
-- v1.00: Release.


Any question, feel free to ask in the comments!

]]
author = "Gleenus and Catherine"
version = "1.05"
forumthread = ""
api_version = 10
dst_compatible = true

all_clients_require_mod = true
client_only_mod = false

icon_atlas = "images/modicon.xml"
icon = "modicon.tex"

----------------------------
-- Configuration settings --
----------------------------


configuration_options = 
{
	{
		name = "RAILCART_CRAFTAMOUNT",
		label = "Tracks per craft",
		hover = "Number of tracks received per craft.",
		options =	
		{
			{description = " 1", data =  1},
			{description = " 2", data =  2},
			{description = " 3", data =  3},
			{description = " 4", data =  4},
            {description = " 5", data =  5},
			{description = " 6 (default)", data = 6},
			{description = " 8", data =  8},
			{description = "10", data = 10},
			{description = "12", data = 12},
			{description = "15", data = 15},
			{description = "20", data = 20},
			{description = "30", data = 30},
			{description = "60", data = 60},
		},
		default = 6,
	},
	
	{
		name = "RAILCART_SPEEDUP",
		label = "Acceleration factor",
		hover = "Changes the Rail Cart acceleration",
		options =	
		{
			{description = "0.10", data =  0.1},
			{description = "0.25", data = 0.25},
			{description = "0.50", data =  0.5},
			{description = "0.75", data =  0.75},
            {description = "1 (default)", data =  1},
			{description = "1.25", data =  1.25},
			{description = "1.50", data = 1.5},
			{description = "1.75", data = 1.75},
			{description = "2.00", data = 2},
			{description = "2.50", data = 2.5},
			{description = "3.00", data = 3},
		},
		default = 1,
	},
	
	{
		name = "RAILCART_DAMPING",
		label = "Friction factor",
		hover = "Changes the Rail Cart friction",
		options =	
		{
			{description = "0.00", data =  0.0},
			{description = "0.25", data = 0.25},
			{description = "0.50", data =  0.5},
			{description = "0.75", data =  0.75},
            {description = "1 (default)", data =  1},
			{description = "1.25", data =  1.25},
			{description = "1.50", data = 1.5},
			{description = "1.75", data = 1.75},
			{description = "2.00", data = 2},
			{description = "2.50", data = 2.5},
			{description = "3.00", data = 3},
		},
		default = 1,
	},
	
	{
		name = "RAILCART_BRAKING",
		label = "Braking factor",
		hover = "Changes the Rail Cart braking power",
		options =	
		{
			{description = "0.10", data =  0.1},
			{description = "0.25", data = 0.25},
			{description = "0.50", data =  0.5},
			{description = "0.75", data =  0.75},
            {description = "1 (default)", data =  1},
			{description = "1.25", data =  1.25},
			{description = "1.50", data = 1.5},
			{description = "1.75", data = 1.75},
			{description = "2.00", data = 2},
			{description = "2.50", data = 2.5},
			{description = "3.00", data = 3},
		},
		default = 1,
	},
	
	{
		name = "RAILCART_PLAYSOUND",
		label = "Play sound",
		hover = "Rail Cart play sound while moving",
		options =	
		{
			{description = "No", data = false},
			{description = "Yes", data = true},
		},
		default = true,
	},
	{
		name = "RAILCART_SPAWNSMOKE",
		label = "Spawn smoke (higher CPU)",
		hover = "Rail Cart spawn smoke while moving",
		options =	
		{
			{description = "No", data = false},
			{description = "Yes", data = true},
		},
		default = true,
	},
	{
		name = "RAILCART_FIREPROOF",
		label = "Fireproof Railway tracks",
		hover = "Make the railway tracks fireproof",
		options =	
		{
			{description = "No", data = false},
			{description = "Yes", data = true},
		},
		default = false,
	},
	
}

