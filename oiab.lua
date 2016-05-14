CreateClientConVar("gnode_antiafktimer", 5) -- basically concommand.Add()
local aafkon = 0 -- turns the command to zero by default
local function aafkm()
	chat.AddText(Color(255, 0, 0, 255), "This is a test!")
end
local movements = {
1, 
2, 
3, 
4, 
5, 
6, 
7, 
8, 
9, 
10, 
11, 
12,
13,
14,
15,
16,
17,
18,
19,
20,
21,
22,
23,
24,
25,
26
} -- diffrent movement types
local function move1()
	RunConsoleCommand("+forward")
	LocalPlayer():ConCommand("act cheer")
	timer.Simple(.5, function()
		RunConsoleCommand("-forward")
	end)
end
local function move2()
	RunConsoleCommand("+left")
	RunConsoleCommand("+back")
	LocalPlayer():ConCommand("act laugh")
	timer.Simple(.5, function()
		RunConsoleCommand("-left")
		RunConsoleCommand("-back")
	end)
end
local function move3()
	RunConsoleCommand("+back")
	LocalPlayer():ConCommand("act muscle")
	timer.Simple(.5, function()
		RunConsoleCommand("-back")
	end)
end
local function move4()
	RunConsoleCommand("+right")
	RunConsoleCommand("+forward")
	LocalPlayer():ConCommand("act robot")
	timer.Simple(.5, function()
		RunConsoleCommand("-right")
		RunConsoleCommand("-forward")
	end)
end
local function move5()
	RunConsoleCommand("+moveright")
	LocalPlayer():ConCommand("act zombie")
	timer.Simple(.5, function()
		RunConsoleCommand("-moveright")
	end)
end
local function move6()
	RunConsoleCommand("+back")
	LocalPlayer():ConCommand("act robot")
	timer.Simple(.5, function()
		RunConsoleCommand("-back")
	end)
end
local function move7()
	RunConsoleCommand("+right")
	RunConsoleCommand("+moveleft")
	timer.Simple(.5, function()
		RunConsoleCommand("-right")
		RunConsoleCommand("-moveleft")
		LocalPlayer():ConCommand("act dance")
	end)
end
local function move8()
	RunConsoleCommand("+jump")
	RunConsoleCommand("+duck")
	timer.Simple(.5, function()
		RunConsoleCommand("-jump")
		RunConsoleCommand("-duck")
		LocalPlayer():ConCommand("act agree")
	end)
end
local function move9()
	RunConsoleCommand("+attack")
	LocalPlayer():ConCommand("act becon")
	timer.Simple(.5, function()
		RunConsoleCommand("-attack")
	end)
end
local function move10()
	RunConsoleCommand("+zoom")
	LocalPlayer():ConCommand("act disagree")
	timer.Simple(.5, function()
		RunConsoleCommand("-zoom")
	end)
end
local function move11()
	RunConsoleCommand("+voicerecord")
	LocalPlayer():ConCommand("act disagree")
	timer.Simple(.5, function()
		RunConsoleCommand("-voicerecord")
	end)
end
local function move12()
	LocalPlayer():ConCommand("say Now... about that beer I owed ya! -Barney Calhoun")
	LocalPlayer():ConCommand("+walk")
	timer.Simple( .5, function()
		RunConsoleCommand("-use")
		LocalPlayer():ConCommand("-walk")
	end)
end
local function move13()
	LocalPlayer():ConCommand("say Rise and shine, Mr. Freeman. Rise and shine. Not that I wish to imply you have been sleeping on the job. No one is more deserving of a rest. And all the effort in the world would have gone to waste until... well, let's just say your hour has come again. The right man in the wrong place can make all the difference in the world. So, wake up, Mr. Freeman. Wake up and smell the ashes. -The G-Man")
	LocalPlayer():ConCommand("+walk")
	timer.Simple( .5, function()
		RunConsoleCommand("-use")
		LocalPlayer():ConCommand("-walk")
	end)
end
local function move14()
	LocalPlayer():ConCommand("say The truth...you can never know...the truth..... -The Nihilanth")
	LocalPlayer():ConCommand("+walk")
	timer.Simple( .5, function()
		RunConsoleCommand("-use")
		LocalPlayer():ConCommand("-walk")
	end)
end
local function move15()
	LocalPlayer():ConCommand("say Man of few words, aren't you- -Alyx Vance")
	LocalPlayer():ConCommand("+walk")
	timer.Simple( .5, function()
		RunConsoleCommand("-use")
		LocalPlayer():ConCommand("-walk")
	end)
end
local function move16()
	LocalPlayer():ConCommand("say When the singularity collapses, I will be far away from here. In another universe, as a matter of fact. You, on the other hand, will be destroyed in every way it is possible to be destroyed, and even in some which are essentially impossible. -Wallace Breen to Gordon Freeman")
	LocalPlayer():ConCommand("+walk")
	timer.Simple( .5, function()
		RunConsoleCommand("-use")
		LocalPlayer():ConCommand("-walk")
	end)
end
local function move17()
	LocalPlayer():ConCommand("say Aren't you going to speak up for me, Gordon- -Alyx Vance")
	LocalPlayer():ConCommand("+walk")
	timer.Simple( .5, function()
		RunConsoleCommand("-use")
		LocalPlayer():ConCommand("-walk")
	end)
end
local function move18()
	LocalPlayer():ConCommand("say You've been wrong about every single thing you've ever done, including this thing. You're not smart. You're not a scientist. You're not a doctor. You're not even a full-time employee! Where did your life go so wrong- -GLaDOS")
	LocalPlayer():ConCommand("+walk")
	timer.Simple( .5, function()
		RunConsoleCommand("-use")
		LocalPlayer():ConCommand("-walk")
	end)
end
local function move19()
	LocalPlayer():ConCommand("say What's your name, dirtbag- Sound off like you got a pair! Corporal Shephard, huh- Looks more like Corporal Dog Meat to me! Seems your name was mysteriously bumped to the top of the advanced training list! -Dwight T. Barnes")
	LocalPlayer():ConCommand("+walk")
	timer.Simple( .5, function()
		RunConsoleCommand("-use")
		LocalPlayer():ConCommand("-walk")
	end)
end
local function move20()
	LocalPlayer():ConCommand("say We're a lot alike, you and I. You tested me. I tested you. You killed me. I—oh, no, wait. I guess I haven't killed you yet. Well. Food for thought. -GLaDOS")
	LocalPlayer():ConCommand("+walk")
	timer.Simple( .5, function()
		RunConsoleCommand("-use")
		LocalPlayer():ConCommand("-walk")
	end)
end
local function move21()
	LocalPlayer():ConCommand("say The cake is a lie. -Doug Rattmann scrawling")
	LocalPlayer():ConCommand("+walk")
	timer.Simple( .5, function()
		RunConsoleCommand("-use")
		LocalPlayer():ConCommand("-walk")
	end)
end
local function move22()
	LocalPlayer():ConCommand("say I knew if you both stayed together you could get through anything. -Eli Vance to Gordon Freeman and Alyx Vance.")
	LocalPlayer():ConCommand("+walk")
	timer.Simple( .5, function()
		RunConsoleCommand("-use")
		LocalPlayer():ConCommand("-walk")
	end)
end
local function move23()
	LocalPlayer():ConCommand("say Alright, I've been thinking. When life gives you lemons, don't make lemonade! Make life take the lemons back! Get mad! I don't want your damn lemons; what am I supposed to do with these- Demand to see life's manager! Make life rue the day it thought it could give Cave Johnson lemons! Do you know who I am- I'm the man who's gonna burn your house down... with the lemons! I'm gonna get my engineers to invent a combustible lemon that burns your house down! -Cave Johnson")
	LocalPlayer():ConCommand("+walk")
	timer.Simple( .5, function()
		RunConsoleCommand("-use")
		LocalPlayer():ConCommand("-walk")
	end)
end
local function move24()
	LocalPlayer():ConCommand("say A shepherd must tend to his flock, especially when they have grown…unruly. -Father Grigori")
	LocalPlayer():ConCommand("+walk")
	timer.Simple( .5, function()
		RunConsoleCommand("-use")
		LocalPlayer():ConCommand("-walk")
	end)
end
local function move25()
	LocalPlayer():ConCommand("say Well, Gordon, I see your HEV Suit still fits you like a glove. At least, the glove parts do. -Isaac Kleiner")
	LocalPlayer():ConCommand("+walk")
	timer.Simple( .5, function()
		RunConsoleCommand("-use")
		LocalPlayer():ConCommand("-walk")
	end)
end
local function move26()
	LocalPlayer():ConCommand("say Wife: When is it all going to end- Husband: It's all right. -The Consoling Couple")
	LocalPlayer():ConCommand("+walk")
	timer.Simple( .5, function()
		RunConsoleCommand("-use")
		LocalPlayer():ConCommand("-walk")
	end)
end
local function antiafk()
	if aafkon == 0 then
		timer.Create("antiafk", GetConVarNumber("gnode_antiafktimer" ), 0, function()
			local grm = table.Random(movements)
			if grm == 1 then
				move1()
			elseif grm == 2 then
				move2()
			elseif grm == 3 then
				move3()
			elseif grm == 4 then
				move4()
			elseif grm == 5 then
				move5()
			elseif grm == 6 then
				move6()
			elseif grm == 7 then
				move7()
			elseif grm == 8 then
				move8()
			elseif grm == 9 then
				move9()
			elseif grm == 10 then
				move10()
			elseif grm == 11 then
				move11()
			elseif grm == 12 then
				move12()
			elseif grm == 13 then
				move13()
			elseif grm == 14 then
				move14()
			elseif grm == 15 then
				move15()
			elseif grm == 16 then
				move16()
			elseif grm == 17 then
				move17()
			elseif grm == 18 then
				move18()
			elseif grm == 19 then
				move19()
			elseif grm == 20 then
				move20()
			elseif grm == 21 then
				move21()
			elseif grm == 22 then
				move22()
			elseif grm == 23 then
				move23()
			elseif grm == 24 then
				move24()
			elseif grm == 25 then
				move25()
			elseif grm == 26 then
				move26()
			end
		end)
		aafkon = 1
		chat.AddText(Color(204, 40, 40, 255), "[", Color(23, 196, 134, 255), "OIAB", Color(204, 40, 40, 255), "]" .. " ", Color(33, 167, 196, 255), "has been initialized!")
	elseif aafkon == 1 then
		timer.Destroy("antiafk")
		hook.Remove("HUDPaint", "aafkpaint")
		aafkon = 0
	end
end
concommand.Add("gnode_antiafk", antiafk)
