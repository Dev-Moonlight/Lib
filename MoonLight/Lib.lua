local MoonLightHub = loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-Moonlight/Lib/refs/heads/main/MoonLight/source"))()

local Window = MoonLightHub:CreateWindow("✨ Example Hub", "v2.0.0")

Window:MakeTabSection("Farming")
local GeneralTab = Window:MakeTab("General", "rbxassetid://")

GeneralTab:AddContentSection("General")

GeneralTab:AddBanner(
    "Moonlight | Community", 
    "MoonLightHub - Script Free, Fast Update, Fast Support...", 
    "rbxassetid://", 
    "https://discord.gg/"
)

GeneralTab:AddContentSection("Farmming Toggle")

GeneralTab:AddToggle("Toggle 1", "rbxassetid://", true, true, function(state) end)
GeneralTab:AddToggle("Toggle 2", "rbxassetid://", false, true, function(state) end)

GeneralTab:AddContentSection("Other Farmming")

for i = 1, 6 do
    GeneralTab:AddButton("Button " .. i, "rbxassetid://", true, function() end)
end

local MyDropdown = GeneralTab:AddDropdown("Dropdown", {"Option 1", "Option 2", "Option 3"}, true, function(opt) end)

local mySlider = Elements:AddSlider("Walk Speed", "rbxassetid://...", 16, 100, 16, function(val)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = val
end)

-- Set value từ ngoài nếu cần:
mySlider:SetValue(50)

