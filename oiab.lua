CreateClientConVar( "gnode_oiabtimer", 5 ) -- basically concommand.Add()
local aoiabon = 0 -- turns the command to zero by default
local function aoiabm( )
	draw.SimpleText("um....I.....uhh...this is disabled!") -- Message on lua_openscript_cl
end
local movements = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 } -- diffrent movement types
local function move1( )
	RunConsoleCommand( "+forward" )
	LocalPlayer():ConCommand( "act cheer" )
	timer.Simple( .5, function( )
		RunConsoleCommand( "-forward" )
	end )
end
local function move2( )
	RunConsoleCommand( "+left" )
	RunConsoleCommand( "+back" )
	LocalPlayer():ConCommand( "act laugh" )
	timer.Simple(.5, function()
		RunConsoleCommand( "-left" )
		RunConsoleCommand( "-back" )
	end )
end
local function move3( )
	RunConsoleCommand( "+back" )
	LocalPlayer():ConCommand( "act muscle" )
	timer.Simple( .5, function( )
		RunConsoleCommand( "-back" )
	end )
end
local function move4( )
	RunConsoleCommand( "+right" )
	RunConsoleCommand( "+forward" )
	LocalPlayer():ConCommand( "act robot" )
	timer.Simple( .5, function( )
		RunConsoleCommand( "-right" )
		RunConsoleCommand( "-forward" )
	end )
end
local function move5( )
	RunConsoleCommand( "+moveright" )
	LocalPlayer():ConCommand( "act zombie" )
	timer.Simple( .5, function( )
		RunConsoleCommand( "-moveright" )
	end )
end
local function move6( )
	RunConsoleCommand( "+back" )
	LocalPlayer():ConCommand( "act robot" )
	timer.Simple( .5, function( )
		RunConsoleCommand( "-back" )
	end )
end
local function move7( )
	RunConsoleCommand( "+right" )
	RunConsoleCommand( "+moveleft" )
	timer.Simple( .5, function( )
		RunConsoleCommand( "-right" )
		RunConsoleCommand( "-moveleft" )
		LocalPlayer():ConCommand( "act dance" )
	end )
end
local function move8( )
	RunConsoleCommand( "+jump" )
	RunConsoleCommand( "+duck" )
	timer.Simple( .5, function( )
		RunConsoleCommand( "-jump" )
		RunConsoleCommand( "-duck" )
		LocalPlayer():ConCommand( "act agree" )
	end )
end
local function move9( )
	RunConsoleCommand( "+attack" )
	LocalPlayer():ConCommand( "act becon" )
	timer.Simple( .5, function( )
		RunConsoleCommand( "-attack" )
	end )
end
local function move10( )
	RunConsoleCommand( "+zoom" )
	LocalPlayer():ConCommand( "act disagree" )
	timer.Simple( .5, function( )
		RunConsoleCommand( "-zoom" )
	end )
end
local function oiab( )
	if aoiabon == 0 then
		timer.Create( "oiab", GetConVarNumber( "gnode_oiabtimer" ), 0, function( )
			local oigrm = table.Random( movements )
			if oigrm == 1 then
				move1( )
			elseif oigrm == 2 then
				move2( )
			elseif oigrm == 3 then
				move3( )
			elseif oigrm == 4 then
				move4( )
			elseif oigrm == 5 then
				move5( )
			elseif oigrm == 6 then
				move6( )
			elseif oigrm == 7 then
				move7( )
			elseif oigrm == 8 then
				move8( )
			elseif oigrm == 9 then
				move9( )
			elseif oigrm == 10 then
				move10( )
			end
		end )
		aoiabon = 1
		chat.AddText(Color(204, 40, 40, 255), "[", Color(23, 196, 134, 255), "OIAB", Color(204, 40, 40, 255), "]" .. " ", Color(33, 167, 196, 255), "has been initialized!")
	elseif aoiabon == 1 then
		timer.Destroy( "oiab" )
		hook.Remove( "HUDPaint", "aoiabpaint" )
		aoiabon = 0
		chat.AddText(Color(204, 40, 40, 255), "[", Color(23, 196, 134, 255), "OIAB", Color(204, 40, 40, 255), "]" .. " ", Color(33, 167, 196, 255), "has been removed!")
	end
end
concommand.Add( "gnode_oiab", oiab )
