getgenv().SitUp = false;
getgenv().PushUp = false;
getgenv().DamageFarm = false;

function SitUp()
    spawn(function()
      while getgenv().SitUp == true do

          game:GetService("ReplicatedStorage").Remotes.SitUp:FireServer()

         wait(2)
      end
   end)
end




function PushUp()
    spawn(function()
      while getgenv().PushUp == true do

         game:GetService("ReplicatedStorage").Remotes.PushUp:FireServer()

         wait(2)
      end
   end)
end



function DamageFarm()
    spawn(function()
      while getgenv().DamageFarm == true do

local args = {
    [1] = 1
}

game:GetService("ReplicatedStorage").Attack:FireServer(unpack(args))

		  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(98.6515427, 3.39999771, 64.377594, -0.920514166, 4.26973905e-08, 0.390709162, 1.31298989e-08, 1, -7.83476253e-08, -0.390709162, -6.69901254e-08, -0.920514166)

         wait(2)
      end
   end)
end


--Library Load
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

--Window
local w = library:CreateWindow("Astra Hub") -- Creates the window

--Tab
local b = w:CreateFolder("Farming") -- Creates the folder(U will put here your buttons,etc

--Tab
local c = w:CreateFolder("Teleport")

--Toggle Function
b:Toggle("SitUp",function(bool)
    getgenv().SitUp = bool
    print('SitUp is: ', bool);
	if bool then
		SitUp();
	end
end)

--Toggle Function
b:Toggle("PushUp",function(bool)
    getgenv().PushUp = bool
    print('PushUp is: ', bool);
	if bool then
		PushUp();
	end
end)

--Toggle Function
b:Toggle("DamageFarm",function(bool)
    getgenv().DamageFarm = bool
    print('Dagame Farm is: ', bool);
	if bool then
		DamageFarm();
	end
end)

--Button Function
c:Button("TP to Spawn", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(36.1703758, 3.1999836, 150.47287, 0.461732626, -1.33029348e-08, 0.887019157, -1.18405741e-09, 1, 1.56137023e-08, -0.887019157, -8.25963742e-09, 0.461732626)
end)

--Button Function
c:Button("TP to CobraKai", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(24.7089844, 3.26012897, 68.0172882, 0.999994934, -2.23877308e-08, -0.00317624607, 2.25656258e-08, 1, 5.59717535e-08, 0.00317624607, -5.60431452e-08, 0.999994934)
end)

--Button Function
c:Button("TP to MiyagiDo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-60.3604355, 5.20000219, -1030.35913, 0.999814272, 3.85810317e-08, 0.019271927, -3.75391309e-08, 1, -5.44249374e-08, -0.019271927, 5.36913767e-08, 0.999814272)
end)

--Button Function
c:Button("TP to Safe Area", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(79.0278397, 3.39999914, 76.5302963, 0.999961972, -4.08569321e-08, 0.00871935859, 4.1852509e-08, 1, -1.139978e-07, -0.00871935859, 1.14358393e-07, 0.999961972)
end)

--Button Function
c:Button("TP to Tournament", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(38.4453773, 3.1999867, 273.518951, -0.732383013, 7.64061809e-08, -0.680892885, 2.25491643e-08, 1, 8.79603235e-08, 0.680892885, 4.90670828e-08, -0.732383013)
end)
