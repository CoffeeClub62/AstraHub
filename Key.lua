local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "KeySystem", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

OrionLib:MakeNotification({
	Name = "Astra Hub - Welcome",
	Content = "Obtenha as Keys semanais em nosso Discord!",
	Image = "rbxassetid://4483345998",
	Time = 5
})

_G.Key = "AhJoLbaaHqqss"
_G.PremiumKey = "AsPkksLmansqs"
_G.KeyInput = "string"

function MakeScriptHub()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/CoffeeClub62/AstraHub/main/CobraKai.lua"), true))() -- You Put Your Script Here
end

function MakePremiumScriptHub()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/CoffeeClub62/AstraHub/main/CobraKai.lua"), true))() -- You Put Your Script Here
end


function CorrectKeyNotifications()
    OrionLib:MakeNotification({
        Name = "Key Correta!",
        Content = "Seja Bem-Vindo ao AstraHub - Cobra Kai",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

function WrongKeyNotifications()
    OrionLib:MakeNotification({
        Name = "Key Incorreta ou Inválida",
        Content = "Esta não a Key informada em nosso Discord.",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

local Tab = Window:MakeTab({
	Name = "Key System",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "Insira a Key",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
        _G.KeyInput = Value
	end	  
})

Tab:AddButton({
	Name = "Confira a Key",
	Callback = function()
        if _G.KeyInput == _G.Key then
         MakeScriptHub()
         CorrectKeyNotifications()
     else
        WrongKeyNotifications()
        end
  	end    
})

Tab:AddButton({
	Name = "Confira a Key Premium",
	Callback = function()
        if _G.KeyInput == _G.PremiumKey then
         MakePremiumScriptHub()
         CorrectKeyNotifications()
     else
        WrongKeyNotifications()
        end
  	end    
})

