local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("Duper tools And scripts V10  ( MADE BY AiDar )", "DarkTheme")


wait(2.0)
game.StarterGui:SetCore("SendNotification", {
Title = "Script Executing Please Wait"; 
Text = "Made by Aidar#2500"; 
Duration = 5; 
})


--_______________________________________________________________________________________________

local Tab = Window:NewTab("Boombox Duper")


local Section = Tab:NewSection("Boombox duper")

Section:NewTextBox("in void dupe", "", function(xd)

    
    local amount = xd
        
    local plr = game:GetService("Players").LocalPlayer
    local character = plr.Character
    
    local ogpos = character.HumanoidRootPart.Position
    
    for i = 1, amount do
       character:WaitForChild("HumanoidRootPart")
       for i,v in pairs(plr.Backpack:GetChildren()) do
           if v:IsA("Tool") then v.Parent = character end
       end
       for i,v in pairs(character:GetChildren()) do
           if v:IsA("Tool") then v.Parent = character end
       end
       character.HumanoidRootPart.CFrame = CFrame.new(0,9999999999,0)
       repeat wait() until not plr.Backpack:FindFirstChildOfClass("Tool")
       wait(0.75)
       for i,v in pairs(character:GetChildren()) do
           if v:IsA("BasePart") then
               v.CanCollide = false
               v.Anchored = true
           end
       end
       for i,v in pairs(character:GetChildren()) do
           if v:IsA("Tool") then v.Parent = workspace end
       end
       character:BreakJoints()
       plr.CharacterAdded:Wait()
       character = plr.Character
    end
    
    character:WaitForChild('HumanoidRootPart')
    wait(0.15)
    character.HumanoidRootPart.CFrame = CFrame.new(ogpos)
    for i,v in pairs(workspace:GetChildren()) do
       if v:IsA("Tool") then
           character.Humanoid:EquipTool(v)    
       end
    end
    end)
    
    Section:NewTextBox("In house dupe", "", function(ff)
    
    local amount = ff
        
    local plr = game:GetService("Players").LocalPlayer
    local character = plr.Character
    
    
        
    local ogpos = character.HumanoidRootPart.Position
    
    for i = 1, amount do
       character:WaitForChild("HumanoidRootPart")
       for i,v in pairs(plr.Backpack:GetChildren()) do
           if v:IsA("Tool") then v.Parent = character end
       end
       for i,v in pairs(character:GetChildren()) do
           if v:IsA("Tool") then v.Parent = character end
       end
       character.HumanoidRootPart.CFrame = CFrame.new(5614.46484375, 52.155479431152344, -17237.150390625)
       repeat wait() until not plr.Backpack:FindFirstChildOfClass("Tool")
       wait(0.25)
       for i,v in pairs(character:GetChildren()) do
           if v:IsA("BasePart") then
               v.CanCollide = false
               v.Anchored = true
           end
       end
       for i,v in pairs(character:GetChildren()) do
           if v:IsA("Tool") then v.Parent = workspace end
       end
       character:BreakJoints()
       plr.CharacterAdded:Wait()
       character = plr.Character
    end
    
    character:WaitForChild('HumanoidRootPart')
    wait(0.15)
    character.HumanoidRootPart.CFrame = CFrame.new(ogpos)
    for i,v in pairs(workspace:GetChildren()) do
       if v:IsA("Tool") then
           character.Humanoid:EquipTool(v)    
       end
       end
    end)


--_______________________________________________________________________________________________

local Tab = Window:NewTab("Visuals")

local Section = Tab:NewSection("BoomBox Visuals")

-- shitty color selector that somehow works
Section:NewColorPicker("Color Selector", "changes colors", Color3.fromRGB(0,0,0), function(color)

    local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") and v.Name == "BoomBox" then
      v.Handle.Color = color
      v.Parent = game.Players.LocalPlayer.Character
    end
end

end)


-- FORCEFIELD BOOMBOX
Section:NewButton("Forcefield BoomBox", "", function()

local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()

for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") and v.Name == "BoomBox" then
      v.Handle.Material = "ForceField"
    end
end
end)

Section:NewButton("Delete Mesh", "", function()
local plr = game.Players.LocalPlayer

for _, x in pairs(plr.Backpack:GetChildren()) do
if x.Name == "BoomBox" then
if x.Handle:FindFirstChild("Mesh") then
x.Parent = plr.Character
x.Handle.Mesh:Destroy()
end
end
end
end)



local Section = Tab:NewSection("Map Visuals")
Section:NewButton("Low GFX", "", function()

    local Material = "SmoothPlastic"

    for i,v in next, workspace:GetDescendants() do
        if v:IsA("BasePart") then
            v.Material = Material
        end
    end

end)





-- taco, dont ask why its here.
-- 142376088
--_______________________________________________________________________________________________
local Tab = Window:NewTab("Boombox builds")


local Section = Tab:NewSection("Boombox builds (not skidded)")



Section:NewButton("Hidden Boombox (1)", "", function()
local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
local Tools = plr.Backpack:GetChildren()

Tools[1].Grip = CFrame.new(-1.5, 0, -8) * CFrame.Angles(0, math.rad(180), 0)
Tools[1].Parent = plr.Character


local hum = game.Players.LocalPlayer.Character.Humanoid
for _,x in next, hum:GetPlayingAnimationTracks() do
   if x.Animation then
    x:Stop()
    end
end
end)

Section:NewButton("Boombox Back (1-10)", "", function()
local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
local Tools = plr.Backpack:GetChildren()

Tools[1].Grip = CFrame.new(-1, 1, 2.3) * CFrame.Angles(0, math.rad(180), 0.65)
Tools[1].Parent = plr.Character

Tools[2].Grip = CFrame.new(-1, 1, 2.3) * CFrame.Angles(0, math.rad(180), 0.65)
Tools[2].Parent = plr.Character

Tools[3].Grip = CFrame.new(-1, 1, 2.3) * CFrame.Angles(0, math.rad(180), 0.65)
Tools[3].Parent = plr.Character

Tools[4].Grip = CFrame.new(-1, 1, 2.3) * CFrame.Angles(0, math.rad(180), 0.65)
Tools[4].Parent = plr.Character

Tools[5].Grip = CFrame.new(-1, 1, 2.3) * CFrame.Angles(0, math.rad(180), 0.65)
Tools[5].Parent = plr.Character

Tools[6].Grip = CFrame.new(-1, 1, 2.3) * CFrame.Angles(0, math.rad(180), 0.65)
Tools[6].Parent = plr.Character

Tools[7].Grip = CFrame.new(-1, 1, 2.3) * CFrame.Angles(0, math.rad(180), 0.65)
Tools[7].Parent = plr.Character

Tools[8].Grip = CFrame.new(-1, 1, 2.3) * CFrame.Angles(0, math.rad(180), 0.65)
Tools[8].Parent = plr.Character

Tools[9].Grip = CFrame.new(-1, 1, 2.3) * CFrame.Angles(0, math.rad(180), 0.65)
Tools[9].Parent = plr.Character

Tools[10].Grip = CFrame.new(-1, 1, 2.3) * CFrame.Angles(0, math.rad(180), 0.65)
Tools[10].Parent = plr.Character

end)

--_______________________________________________________________________________________________

Section:NewButton("Penis (3)", "", function()

local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
local Tools = plr.Backpack:GetChildren()

Tools[1].Grip = CFrame.new(-1, 0.3, -1.3) * CFrame.Angles(1.6, math.rad(0), 3.16)
Tools[1].Parent = plr.Character

Tools[2].Grip = CFrame.new(-2, 0.3, -1.3) * CFrame.Angles(1.6, math.rad(0), 3.16)
Tools[2].Parent = plr.Character

Tools[3].Grip = CFrame.new(1.5, -1.5, -1.3) * CFrame.Angles(1.6, math.rad(90), 3.16)
Tools[3].Parent = plr.Character

end)

--_______________________________________________________________________________________________

Section:NewButton("Big Penis (4)", "", function()

local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
local Tools = plr.Backpack:GetChildren()

Tools[1].Grip = CFrame.new(-1, 0.3, -1.3) * CFrame.Angles(1.6, math.rad(0), 3.16)
Tools[1].Parent = plr.Character

Tools[2].Grip = CFrame.new(-2, 0.3, -1.3) * CFrame.Angles(1.6, math.rad(0), 3.16)
Tools[2].Parent = plr.Character

Tools[3].Grip = CFrame.new(1.5, -1.5, -1.3) * CFrame.Angles(1.6, math.rad(90), 3.16)
Tools[3].Parent = plr.Character

Tools[4].Grip = CFrame.new(4, -1.5, -1.3) * CFrame.Angles(1.6, math.rad(90), 3.16)
Tools[4].Parent = plr.Character

end) 

--_______________________________________________________________________________________________


Section:NewButton("HUGE PENIS (why did i make this)(10)", "", function()

local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
local Tools = plr.Backpack:GetChildren()

Tools[1].Grip = CFrame.new(-1, 0.3, -1.3) * CFrame.Angles(1.6, math.rad(0), 3.16)
Tools[1].Parent = plr.Character

Tools[2].Grip = CFrame.new(-2, 0.3, -1.3) * CFrame.Angles(1.6, math.rad(0), 3.16)
Tools[2].Parent = plr.Character

Tools[3].Grip = CFrame.new(1.5, -1.5, -1.3) * CFrame.Angles(1.6, math.rad(90), 3.16)
Tools[3].Parent = plr.Character

Tools[4].Grip = CFrame.new(4, -1.5, -1.3) * CFrame.Angles(1.6, math.rad(90), 3.16)
Tools[4].Parent = plr.Character

Tools[5].Grip = CFrame.new(6.5, -1.5, -1.3) * CFrame.Angles(1.6, math.rad(90), 3.16)
Tools[5].Parent = plr.Character

Tools[6].Grip = CFrame.new(9, -1.5, -1.3) * CFrame.Angles(1.6, math.rad(90), 3.16)
Tools[6].Parent = plr.Character

Tools[7].Grip = CFrame.new(11.5, -1.5, -1.3) * CFrame.Angles(1.6, math.rad(90), 3.16)
Tools[7].Parent = plr.Character

Tools[8].Grip = CFrame.new(14, -1.5, -1.3) * CFrame.Angles(1.6, math.rad(90), 3.16)
Tools[8].Parent = plr.Character

Tools[9].Grip = CFrame.new(16.5, -1.5, -1.3) * CFrame.Angles(1.6, math.rad(90), 3.16)
Tools[9].Parent = plr.Character

Tools[10].Grip = CFrame.new(16.5, -1.5, -1.3) * CFrame.Angles(1.6, math.rad(90), 3.16)
Tools[10].Parent = plr.Character

end)

--_______________________________________________________________________________________________


Section:NewButton("Schizo Cage (33)", "", function()

local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
local Tools = plr.Backpack:GetChildren()

Tools[1].Grip = CFrame.new(0, 1.2, 0) * CFrame.Angles(0, math.rad(0), 0)
Tools[1].Parent = plr.Character

Tools[2].Grip = CFrame.new(0, 2.6, 0) * CFrame.Angles(0, math.rad(0), 0)
Tools[2].Parent = plr.Character

Tools[3].Grip = CFrame.new(0, -0.2, 0) * CFrame.Angles(0, math.rad(0), 0)
Tools[3].Parent = plr.Character

Tools[4].Grip = CFrame.new(-1.6, -1.6, -0.6) * CFrame.Angles(0, math.rad(-45), 0)
Tools[4].Parent = plr.Character

Tools[5].Grip = CFrame.new(0, -3, 0) * CFrame.Angles(0, math.rad(0), 0)
Tools[5].Parent = plr.Character

Tools[6].Grip = CFrame.new(2.6, 1.2, 0) * CFrame.Angles(0, math.rad(0), 0)
Tools[6].Parent = plr.Character

Tools[7].Grip = CFrame.new(2.6, 2.6, 0) * CFrame.Angles(0, math.rad(0), 0)
Tools[7].Parent = plr.Character

Tools[8].Grip = CFrame.new(2.6, -0.2, 0) * CFrame.Angles(0, math.rad(0), 0)
Tools[8].Parent = plr.Character

Tools[9].Grip = CFrame.new(3.6, -1.6, -2.6) * CFrame.Angles(0, math.rad(45), 0)
Tools[9].Parent = plr.Character

Tools[10].Grip = CFrame.new(2.6, -3, 0) * CFrame.Angles(0, math.rad(0), 0)
Tools[10].Parent = plr.Character

Tools[11].Grip = CFrame.new(0, 1.2, 3) * CFrame.Angles(0, math.rad(180), 0)
Tools[11].Parent = plr.Character

Tools[12].Grip = CFrame.new(0, 2.6, 3) * CFrame.Angles(0, math.rad(180), 0)
Tools[12].Parent = plr.Character

Tools[13].Grip = CFrame.new(0, -0.2, 3) * CFrame.Angles(0, math.rad(180), 0)
Tools[13].Parent = plr.Character

Tools[14].Grip = CFrame.new(0, -1.6, 3) * CFrame.Angles(0, math.rad(180), 0)
Tools[14].Parent = plr.Character

Tools[15].Grip = CFrame.new(0, -3, 3) * CFrame.Angles(0, math.rad(180), 0)
Tools[15].Parent = plr.Character

Tools[16].Grip = CFrame.new(-2.6, 1.2, 3) * CFrame.Angles(0, math.rad(180), 0)
Tools[16].Parent = plr.Character

Tools[17].Grip = CFrame.new(-2.6, 2.6, 3) * CFrame.Angles(0, math.rad(180), 0)
Tools[17].Parent = plr.Character

Tools[18].Grip = CFrame.new(-2.6, -0.2, 3) * CFrame.Angles(0, math.rad(180), 0)
Tools[18].Parent = plr.Character

Tools[19].Grip = CFrame.new(-2.6, -1.6, 3) * CFrame.Angles(0, math.rad(180), 0)
Tools[19].Parent = plr.Character

Tools[20].Grip = CFrame.new(-2.6, -3, 3) * CFrame.Angles(0, math.rad(180), 0)
Tools[20].Parent = plr.Character

Tools[21].Grip = CFrame.new(-1.5, -3, 1.2) * CFrame.Angles(0, math.rad(90), 0)
Tools[21].Parent = plr.Character

Tools[22].Grip = CFrame.new(-1.5, 1.2, 1.2) * CFrame.Angles(0, math.rad(90), 0)
Tools[22].Parent = plr.Character

Tools[23].Grip = CFrame.new(-1.5, 2.6, 1.2) * CFrame.Angles(0, math.rad(90), 0)
Tools[23].Parent = plr.Character

Tools[24].Grip = CFrame.new(-1.5, -0.2, 1.2) * CFrame.Angles(0, math.rad(90), 0)
Tools[24].Parent = plr.Character

Tools[25].Grip = CFrame.new(-1.5, -1.6, 1.2) * CFrame.Angles(0, math.rad(90), 0)
Tools[25].Parent = plr.Character

Tools[26].Grip = CFrame.new(1.5, -3, 3.8) * CFrame.Angles(0, math.rad(-90), 0)
Tools[26].Parent = plr.Character

Tools[27].Grip = CFrame.new(1.5, -1.6, 3.8) * CFrame.Angles(0, math.rad(-90), 0)
Tools[27].Parent = plr.Character

Tools[28].Grip = CFrame.new(1.5, -0.2, 3.8) * CFrame.Angles(0, math.rad(-90), 0)
Tools[28].Parent = plr.Character

Tools[29].Grip = CFrame.new(1.5, 1.2, 3.8) * CFrame.Angles(0, math.rad(-90), 0)
Tools[29].Parent = plr.Character

Tools[30].Grip = CFrame.new(1.5, 2.6, 3.8) * CFrame.Angles(0, math.rad(-90), 0)
Tools[30].Parent = plr.Character

Tools[31].Grip = CFrame.new(-1.5, 0.1, 3.4) * CFrame.Angles(4.71, math.rad(90), 0)
Tools[31].Parent = plr.Character

Tools[32].Grip = CFrame.new(-1.5, -1.4, 3.4) * CFrame.Angles(4.71, math.rad(90), 0)
Tools[32].Parent = plr.Character

Tools[33].Grip = CFrame.new(-1.5, -2.9, 3.4) * CFrame.Angles(4.71, math.rad(90), 0)
Tools[33].Parent = plr.Character

end)

--_______________________________________________________________________________________________

Section:NewButton("Really bad headphones (5)", "", function()

local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
local Tools = plr.Backpack:GetChildren()

Tools[1].Grip = CFrame.new(-1.5, -1.3, -2.4) * CFrame.Angles(0, math.rad(90), 0)
Tools[1].Parent = plr.Character

Tools[2].Grip = CFrame.new(1.5, -1.3, 2.5) * CFrame.Angles(0, math.rad(-90), 0)
Tools[2].Parent = plr.Character

Tools[3].Grip = CFrame.new(-1.5, -1.3, -0.5) * CFrame.Angles(0, math.rad(90), 0)
Tools[3].Parent = plr.Character

Tools[4].Grip = CFrame.new(1.5, -1.3, 0.6) * CFrame.Angles(0, math.rad(-90), 0)
Tools[4].Parent = plr.Character

Tools[5].Grip = CFrame.new(1.5, -1.8, -1.6) * CFrame.Angles(0, math.rad(0), 0)
Tools[5].Parent = plr.Character

end)

--_______________________________________________________________________________________________

Section:NewButton("QBZ 95 (45)", "", function()

local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
local Tools = plr.Backpack:GetChildren()

Tools[1].Grip = CFrame.new(0, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[1].Parent = plr.Character

Tools[2].Grip = CFrame.new(0.4, 0, 0) * CFrame.Angles(-1.58, math.rad(160), -1.5)
Tools[2].Parent = plr.Character

Tools[3].Grip = CFrame.new(2.6, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[3].Parent = plr.Character

Tools[4].Grip = CFrame.new(5.4, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[4].Parent = plr.Character

Tools[5].Grip = CFrame.new(-1, 2, 0) * CFrame.Angles(-1.58, math.rad(160), -1.5)
Tools[5].Parent = plr.Character

Tools[6].Grip = CFrame.new(-3.6, 2, 0) * CFrame.Angles(-1.58, math.rad(160), -1.5)
Tools[6].Parent = plr.Character

Tools[7].Grip = CFrame.new(-2.7, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[7].Parent = plr.Character

Tools[8].Grip = CFrame.new(-5.4, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[8].Parent = plr.Character

Tools[9].Grip = CFrame.new(0.2, -2, 0) * CFrame.Angles(-1.58, math.rad(160), -1.5)
Tools[9].Parent = plr.Character

Tools[10].Grip = CFrame.new(-5.4, -2.6, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[10].Parent = plr.Character

Tools[11].Grip = CFrame.new(-2.7, -2.6, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[11].Parent = plr.Character

Tools[12].Grip = CFrame.new(2.6, -2.6, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[12].Parent = plr.Character

Tools[13].Grip = CFrame.new(-0, -2.6, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[13].Parent = plr.Character

Tools[14].Grip = CFrame.new(5.4, -2.6, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[14].Parent = plr.Character

Tools[15].Grip = CFrame.new(0.4, 7, 0) * CFrame.Angles(-1.58, math.rad(190), -1.5)
Tools[15].Parent = plr.Character

Tools[16].Grip = CFrame.new(-1.7, 7, 0) * CFrame.Angles(-1.58, math.rad(195), -1.5)
Tools[16].Parent = plr.Character

Tools[17].Grip = CFrame.new(0.5, 8.3, 0) * CFrame.Angles(-1.58, math.rad(190), -1.5)
Tools[17].Parent = plr.Character

Tools[18].Grip = CFrame.new(-1.5, 8.3, 0) * CFrame.Angles(-1.58, math.rad(195), -1.5)
Tools[18].Parent = plr.Character

Tools[19].Grip = CFrame.new(8, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[19].Parent = plr.Character

Tools[20].Grip = CFrame.new(-2.8, 9, 0) * CFrame.Angles(-1.58, math.rad(160), -1.5)
Tools[20].Parent = plr.Character

Tools[21].Grip = CFrame.new(10.9, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[21].Parent = plr.Character

Tools[22].Grip = CFrame.new(-3.6, 12, 0) * CFrame.Angles(-1.58, math.rad(160), -1.5)
Tools[22].Parent = plr.Character

Tools[23].Grip = CFrame.new(13.6, -1.7, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[23].Parent = plr.Character

Tools[24].Grip = CFrame.new(13.8, -0.4, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[24].Parent = plr.Character

Tools[25].Grip = CFrame.new(12.6, -3, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[25].Parent = plr.Character

Tools[26].Grip = CFrame.new(14.3, -1.7, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[26].Parent = plr.Character

Tools[27].Grip = CFrame.new(14.4, -0.4, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[27].Parent = plr.Character

Tools[28].Grip = CFrame.new(14.3, -3, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[28].Parent = plr.Character

Tools[29].Grip = CFrame.new(8, -2.6, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[29].Parent = plr.Character

Tools[30].Grip = CFrame.new(10.6, -2.6, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[30].Parent = plr.Character

Tools[31].Grip = CFrame.new(-8, -2, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[31].Parent = plr.Character

Tools[32].Grip = CFrame.new(-6, -1, 1) * CFrame.Angles(-0.5, math.rad(-90), 0)
Tools[32].Parent = plr.Character

Tools[33].Grip = CFrame.new(6, -1, 1) * CFrame.Angles(-0.5, math.rad(90), 0)
Tools[33].Parent = plr.Character

Tools[34].Grip = CFrame.new(-9.6, -2, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[34].Parent = plr.Character

Tools[35].Grip = CFrame.new(-12, -2, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[35].Parent = plr.Character

Tools[36].Grip = CFrame.new(1.5, 6.5, 0) * CFrame.Angles(-1.6, math.rad(160), -1.5)
Tools[36].Parent = plr.Character

Tools[37].Grip = CFrame.new(4.4, 4.5, 0) * CFrame.Angles(-1.6, math.rad(180), -1.5)
Tools[37].Parent = plr.Character

Tools[38].Grip = CFrame.new(2.4, 6.5, 0) * CFrame.Angles(-1.6, math.rad(160), -1.5)
Tools[38].Parent = plr.Character

Tools[39].Grip = CFrame.new(3.4, -5.6, -0.2) * CFrame.Angles(0, math.rad(-90), 0)
Tools[39].Parent = plr.Character

Tools[40].Grip = CFrame.new(0.8, -5.6, -0.2) * CFrame.Angles(0, math.rad(-90), 0)
Tools[40].Parent = plr.Character

Tools[41].Grip = CFrame.new(2.5, -3.5, 0) * CFrame.Angles(-1.65, math.rad(200), -1.6)
Tools[41].Parent = plr.Character

Tools[42].Grip = CFrame.new(3.6, -3.5, 0) * CFrame.Angles(-1.65, math.rad(200), -1.6)
Tools[42].Parent = plr.Character

Tools[43].Grip = CFrame.new(-0.3, -5.6, -0.2) * CFrame.Angles(0, math.rad(-90), 0)
Tools[43].Parent = plr.Character


Tools[44].Grip = CFrame.new(4.4, -6.3, 0) * CFrame.Angles(-1.55, math.rad(180), -1.5)
Tools[44].Parent = plr.Character

Tools[45].Grip = CFrame.new(5.9, -3.9, 0) * CFrame.Angles(-1.55, math.rad(160), -1.5)
Tools[45].Parent = plr.Character

end)

--_______________________________________________________________________________________________

Section:NewButton("boombox stack (1-100)", "", function()

    local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
    local Tools = plr.Backpack:GetChildren()
    
    Tools[1].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[1].Parent = plr.Character
    
    Tools[2].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[2].Parent = plr.Character
    
    Tools[3].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[3].Parent = plr.Character
    
    Tools[4].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[4].Parent = plr.Character
    
    Tools[5].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[5].Parent = plr.Character
    
    Tools[6].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[6].Parent = plr.Character
    
    Tools[7].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[7].Parent = plr.Character
    
    Tools[8].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[8].Parent = plr.Character
    
    Tools[9].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[9].Parent = plr.Character
    
    Tools[10].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[10].Parent = plr.Character
    
    Tools[11].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[11].Parent = plr.Character
    
    Tools[12].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[12].Parent = plr.Character
    
    Tools[13].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[13].Parent = plr.Character
    
    Tools[14].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[14].Parent = plr.Character
    
    Tools[15].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[15].Parent = plr.Character
    
    Tools[16].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[16].Parent = plr.Character
    
    Tools[17].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[17].Parent = plr.Character
    
    Tools[18].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[18].Parent = plr.Character
    
    Tools[19].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[19].Parent = plr.Character
    
    Tools[20].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[20].Parent = plr.Character
    
    Tools[21].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[21].Parent = plr.Character
    
    Tools[22].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[22].Parent = plr.Character
    
    Tools[23].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[23].Parent = plr.Character
    
    Tools[24].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[24].Parent = plr.Character
    
    Tools[25].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[25].Parent = plr.Character
    
    Tools[26].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[26].Parent = plr.Character
    
    Tools[27].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[27].Parent = plr.Character
    
    Tools[28].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[28].Parent = plr.Character
    
    Tools[29].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[29].Parent = plr.Character
    
    Tools[30].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[30].Parent = plr.Character
    
    Tools[31].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[31].Parent = plr.Character
    
    Tools[32].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[32].Parent = plr.Character
    
    Tools[33].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[33].Parent = plr.Character
    
    Tools[34].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[34].Parent = plr.Character
    
    Tools[35].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[35].Parent = plr.Character
    
    Tools[36].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[36].Parent = plr.Character
    
    Tools[37].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[37].Parent = plr.Character
    
    Tools[38].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[38].Parent = plr.Character
    
    Tools[39].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[39].Parent = plr.Character
    
    Tools[40].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[40].Parent = plr.Character
    
    Tools[41].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[41].Parent = plr.Character
    
    Tools[42].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[42].Parent = plr.Character
    
    Tools[43].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[43].Parent = plr.Character
    
    Tools[44].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[44].Parent = plr.Character
    
    Tools[45].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[45].Parent = plr.Character
    
    Tools[46].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[46].Parent = plr.Character
    
    Tools[47].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[47].Parent = plr.Character
    
    Tools[48].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[48].Parent = plr.Character
    
    Tools[49].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[49].Parent = plr.Character
    
    Tools[50].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[50].Parent = plr.Character
    
    Tools[51].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[51].Parent = plr.Character
    
    Tools[52].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[52].Parent = plr.Character
    
    Tools[53].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[53].Parent = plr.Character
    
    Tools[54].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[54].Parent = plr.Character
    
    Tools[55].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[55].Parent = plr.Character
    
    Tools[56].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[56].Parent = plr.Character
    
    Tools[57].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[57].Parent = plr.Character
    
    Tools[58].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[58].Parent = plr.Character
    
    Tools[59].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[59].Parent = plr.Character
    
    Tools[60].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[60].Parent = plr.Character
    
    Tools[61].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[61].Parent = plr.Character
    
    Tools[62].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[62].Parent = plr.Character
    
    Tools[63].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[63].Parent = plr.Character
    
    Tools[64].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[64].Parent = plr.Character
    
    Tools[65].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[65].Parent = plr.Character
    
    Tools[66].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[66].Parent = plr.Character
    
    Tools[67].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[67].Parent = plr.Character
    
    Tools[68].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[68].Parent = plr.Character
    
    Tools[69].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[69].Parent = plr.Character
    
    Tools[70].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[70].Parent = plr.Character
    
    Tools[71].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[71].Parent = plr.Character
    
    Tools[72].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[72].Parent = plr.Character
    
    Tools[73].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[73].Parent = plr.Character
    
    Tools[74].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[74].Parent = plr.Character
    
    Tools[75].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[75].Parent = plr.Character
    
    Tools[76].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[76].Parent = plr.Character
    
    Tools[77].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[77].Parent = plr.Character
    
    Tools[78].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[78].Parent = plr.Character
    
    Tools[79].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[79].Parent = plr.Character
    
    Tools[80].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[80].Parent = plr.Character
    
    Tools[81].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[81].Parent = plr.Character
    
    Tools[82].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[82].Parent = plr.Character
    
    Tools[83].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[83].Parent = plr.Character
    
    Tools[84].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[84].Parent = plr.Character
    
    Tools[85].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[85].Parent = plr.Character
    
    Tools[86].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[86].Parent = plr.Character
    
    Tools[87].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[87].Parent = plr.Character
    
    Tools[88].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[88].Parent = plr.Character
    
    Tools[89].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[89].Parent = plr.Character
    
    Tools[90].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[90].Parent = plr.Character
    
    Tools[91].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[91].Parent = plr.Character
    
    Tools[92].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[92].Parent = plr.Character
    
    Tools[93].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[93].Parent = plr.Character
    
    Tools[94].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[94].Parent = plr.Character
    
    Tools[95].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[95].Parent = plr.Character
    
    Tools[96].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[96].Parent = plr.Character
    
    Tools[97].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[97].Parent = plr.Character
    
    Tools[98].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[98].Parent = plr.Character
    
    Tools[99].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[99].Parent = plr.Character
    
    Tools[100].Grip = CFrame.new(1, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[100].Parent = plr.Character

end)
--_______________________________________________________________________________________________

Section:NewButton("LMG (54)", "", function()

local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
local Tools = plr.Backpack:GetChildren()

Tools[1].Grip = CFrame.new(0, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[1].Parent = plr.Character

Tools[2].Grip = CFrame.new(0.4, 0, 0) * CFrame.Angles(-1.58, math.rad(160), -1.56)
Tools[2].Parent = plr.Character

Tools[3].Grip = CFrame.new(-1, 2, 0) * CFrame.Angles(-1.58, math.rad(160), -1.56)
Tools[3].Parent = plr.Character

Tools[4].Grip = CFrame.new(-3.6, 2, 0) * CFrame.Angles(-1.58, math.rad(160), -1.56)
Tools[4].Parent = plr.Character

Tools[5].Grip = CFrame.new(-2.6, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[5].Parent = plr.Character

Tools[6].Grip = CFrame.new(-0.6, -1.3, -2) * CFrame.Angles(0, math.rad(180), -0.5)
Tools[6].Parent = plr.Character

Tools[7].Grip = CFrame.new(0.6, -1.3, -2) * CFrame.Angles(0, math.rad(180), 0.5)
Tools[7].Parent = plr.Character

Tools[8].Grip = CFrame.new(1.2, -0.2, -2) * CFrame.Angles(0, math.rad(180), 0)
Tools[8].Parent = plr.Character

Tools[9].Grip = CFrame.new(-1.2, -0.2, -2) * CFrame.Angles(0, math.rad(180), 0)
Tools[9].Parent = plr.Character

Tools[10].Grip = CFrame.new(1.2, 1, -2) * CFrame.Angles(0, math.rad(180), 0)
Tools[10].Parent = plr.Character

Tools[11].Grip = CFrame.new(-1.2, 1, -2) * CFrame.Angles(0, math.rad(180), 0)
Tools[11].Parent = plr.Character

Tools[12].Grip = CFrame.new(1.2, 2.3, -2) * CFrame.Angles(0, math.rad(180), 0)
Tools[12].Parent = plr.Character

Tools[13].Grip = CFrame.new(-1.2, 2.3, -2) * CFrame.Angles(0, math.rad(180), 0)
Tools[13].Parent = plr.Character

Tools[14].Grip = CFrame.new(2.2, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[14].Parent = plr.Character

Tools[15].Grip = CFrame.new(2.2, 2.4, 0) * CFrame.Angles(-1.58, math.rad(-150), -1.56)
Tools[15].Parent = plr.Character

Tools[16].Grip = CFrame.new(-0.6, -1.3, -2.5) * CFrame.Angles(0, math.rad(180), -0.5)
Tools[16].Parent = plr.Character

Tools[17].Grip = CFrame.new(0.6, -1.3, -2.5) * CFrame.Angles(0, math.rad(180), 0.5)
Tools[17].Parent = plr.Character

Tools[18].Grip = CFrame.new(1.2, -0.2, -2.5) * CFrame.Angles(0, math.rad(180), 0)
Tools[18].Parent = plr.Character

Tools[19].Grip = CFrame.new(-1.2, -0.2, -2.5) * CFrame.Angles(0, math.rad(180), 0)
Tools[19].Parent = plr.Character

Tools[20].Grip = CFrame.new(1.2, 1, -2.5) * CFrame.Angles(0, math.rad(180), 0)
Tools[20].Parent = plr.Character

Tools[21].Grip = CFrame.new(-1.2, 1, -2.5) * CFrame.Angles(0, math.rad(180), 0)
Tools[21].Parent = plr.Character

Tools[22].Grip = CFrame.new(1.2, 2.3, -2.5) * CFrame.Angles(0, math.rad(180), 0)
Tools[22].Parent = plr.Character

Tools[23].Grip = CFrame.new(-1.2, 2.3, -2.5) * CFrame.Angles(0, math.rad(180), 0)
Tools[23].Parent = plr.Character

Tools[24].Grip = CFrame.new(4.8, -2, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[24].Parent = plr.Character

Tools[25].Grip = CFrame.new(2.2, -2.6, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[25].Parent = plr.Character

Tools[26].Grip = CFrame.new(7.4, -2, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[26].Parent = plr.Character

Tools[27].Grip = CFrame.new(10, -2, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[27].Parent = plr.Character

Tools[27].Grip = CFrame.new(-1.1, -9.3, 0) * CFrame.Angles(1.58, math.rad(-180), 1.56)
Tools[27].Parent = plr.Character

Tools[28].Grip = CFrame.new(1.7, -9.3, 0) * CFrame.Angles(1.58, math.rad(-180), 1.56)
Tools[28].Parent = plr.Character

Tools[29].Grip = CFrame.new(7, -3.9, 0) * CFrame.Angles(1.58, math.rad(-130), 1.56)
Tools[29].Parent = plr.Character

Tools[30].Grip = CFrame.new(5, -3.9, 0) * CFrame.Angles(1.58, math.rad(-130), 1.56)
Tools[30].Parent = plr.Character

Tools[31].Grip = CFrame.new(3, -3.9, 0) * CFrame.Angles(1.58, math.rad(-130), 1.56)
Tools[31].Parent = plr.Character

Tools[32].Grip = CFrame.new(-1.6, -4.5, 0) * CFrame.Angles(1.58, math.rad(-160), 1.56)
Tools[32].Parent = plr.Character

Tools[33].Grip = CFrame.new(2.2, -3.9, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[33].Parent = plr.Character

Tools[34].Grip = CFrame.new(-4.6, -2.9, 0) * CFrame.Angles(1.58, math.rad(-180), 1.58)
Tools[34].Parent = plr.Character

Tools[35].Grip = CFrame.new(-3, 3.6, 0) * CFrame.Angles(1.58, math.rad(110), 1.58)
Tools[35].Parent = plr.Character

Tools[36].Grip = CFrame.new(-0, -3.9, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[36].Parent = plr.Character

Tools[37].Grip = CFrame.new(-0, -2.6, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[37].Parent = plr.Character

Tools[38].Grip = CFrame.new(-2.6, -3.9, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[38].Parent = plr.Character

Tools[39].Grip = CFrame.new(-2.6, -2.6, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[39].Parent = plr.Character

Tools[40].Grip = CFrame.new(-5.2, -3.6, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[40].Parent = plr.Character

Tools[41].Grip = CFrame.new(-5.2, -2.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[41].Parent = plr.Character

Tools[42].Grip = CFrame.new(-5.2, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[42].Parent = plr.Character

Tools[43].Grip = CFrame.new(-7.8, -3.6, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[43].Parent = plr.Character

Tools[44].Grip = CFrame.new(-7.8, -2.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[44].Parent = plr.Character

Tools[45].Grip = CFrame.new(-7.8, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[45].Parent = plr.Character

Tools[46].Grip = CFrame.new(-4.9, 7.6, 0) * CFrame.Angles(1.58, math.rad(-160), 1.56)
Tools[46].Parent = plr.Character

Tools[47].Grip = CFrame.new(0.6, 9.2, 0) * CFrame.Angles(1.58, math.rad(-200), 1.56)
Tools[47].Parent = plr.Character

Tools[48].Grip = CFrame.new(-10.4, -2.5, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[48].Parent = plr.Character

Tools[49].Grip = CFrame.new(-13, -2.5, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[49].Parent = plr.Character

Tools[50].Grip = CFrame.new(-15.6, -2.5, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[50].Parent = plr.Character

Tools[51].Grip = CFrame.new(-4.2, 11, 0) * CFrame.Angles(1.58, math.rad(-180), 1.56)
Tools[51].Parent = plr.Character

Tools[52].Grip = CFrame.new(0.9, 8, 0) * CFrame.Angles(1.58, math.rad(-180), 1.56)
Tools[52].Parent = plr.Character

Tools[53].Grip = CFrame.new(2.8, 8, -1.2) * CFrame.Angles(1.6, math.rad(-180), 2.3)
Tools[53].Parent = plr.Character

Tools[54].Grip = CFrame.new(2.8, 8, 1.6) * CFrame.Angles(1.6, math.rad(-180), 0.8)
Tools[54].Parent = plr.Character

end)

--_________________________________________________________________________________________________

local Section = Tab:NewSection("Boombox builds (skidded ones)")
Section:NewButton("Ak47 (20)", "", function()

local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
local Tools = plr.Backpack:GetChildren()

Tools[1].Grip = CFrame.new(0.7, -0.5, -0.2) * CFrame.Angles(50, math.rad(-180), 3.13)
Tools[1].Parent = plr.Character

Tools[2].Grip = CFrame.new(0.5, -1.2, -0.2) * CFrame.Angles(0, math.rad(-90), 0)
Tools[2].Parent = plr.Character

Tools[3].Grip = CFrame.new(-1.5, -1.2, -0.2) * CFrame.Angles(0, math.rad(-90), 0.03)
Tools[3].Parent = plr.Character

Tools[4].Grip = CFrame.new(-2.5, -1.2, -0.2) * CFrame.Angles(0, math.rad(-90), 0)
Tools[4].Parent = plr.Character

Tools[5].Grip = CFrame.new(-4.6, -0.4, -0.2) * CFrame.Angles(1.6, math.rad(-98), 1.6)
Tools[5].Parent = plr.Character

Tools[6].Grip = CFrame.new(-7, -1.2, -0.2) * CFrame.Angles(0, math.rad(-90), 0)
Tools[6].Parent = plr.Character

Tools[7].Grip = CFrame.new(-9.6, -1.2, -0.2) * CFrame.Angles(0, math.rad(-90), 0)
Tools[7].Parent = plr.Character

Tools[8].Grip = CFrame.new(-12.2, -1.2, -0.2) * CFrame.Angles(0, math.rad(-90), 0)
Tools[8].Parent = plr.Character

Tools[9].Grip = CFrame.new(-1.2, -3.1, -0.2) * CFrame.Angles(1.6, math.rad(-15), 1.6)
Tools[9].Parent = plr.Character

Tools[10].Grip = CFrame.new(-3.3, -2.7, -0.2) * CFrame.Angles(1.6, math.rad(-25), 1.6)
Tools[10].Parent = plr.Character

Tools[11].Grip = CFrame.new(-0.1, 1.8, -0.1) * CFrame.Angles(1.6, math.rad(65), 1.6)
Tools[11].Parent = plr.Character

Tools[12].Grip = CFrame.new(1.3, 2.05, -0.1) * CFrame.Angles(1.6, math.rad(90), 1.6)
Tools[12].Parent = plr.Character

Tools[13].Grip = CFrame.new(3.15, 2.05, -0.1) * CFrame.Angles(1.6, math.rad(90), 1.6)
Tools[13].Parent = plr.Character

Tools[14].Grip = CFrame.new(5.3, 2.05, -0.1) * CFrame.Angles(1.6, math.rad(90), 1.6)
Tools[14].Parent = plr.Character

Tools[15].Grip = CFrame.new(6.5, 4.1, -0.1) * CFrame.Angles(1.6, math.rad(110), 1.6)
Tools[15].Parent = plr.Character

Tools[16].Grip = CFrame.new(-14.3, -1.2, -0.2) * CFrame.Angles(0, math.rad(-90), 0)
Tools[16].Parent = plr.Character

Tools[17].Grip = CFrame.new(3.1, -1.2, -0.2) * CFrame.Angles(0, math.rad(-90), 0)
Tools[17].Parent = plr.Character

Tools[18].Grip = CFrame.new(5.2, -1.2, -0.2) * CFrame.Angles(0, math.rad(-90), 0)
Tools[18].Parent = plr.Character

Tools[19].Grip = CFrame.new(0.25, 6.8, -0.05) * CFrame.Angles(1.6, math.rad(-0), 1.6)
Tools[19].Parent = plr.Character

Tools[20].Grip = CFrame.new(3.8, -4.4, -0.27) * CFrame.Angles(1.6, math.rad(-137), 1.6)
Tools[20].Parent = plr.Character

end)

--_______________________________________________________________________________________________

Section:NewButton("RPG (13)", "", function()

local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
local Tools = plr.Backpack:GetChildren()

Tools[1].Grip = CFrame.new(0.7, -0.5, -0.2) * CFrame.Angles(50, math.rad(-180), 3.13)
Tools[1].Parent = plr.Character

Tools[2].Grip = CFrame.new(0.7, -1.2, -0.2) * CFrame.Angles(1.6, math.rad(-98),1.6)
Tools[2].Parent = plr.Character

Tools[3].Grip = CFrame.new(2.5, -1.2, -0.2) * CFrame.Angles(1.6, math.rad(-98),1.6)
Tools[3].Parent = plr.Character

Tools[4].Grip = CFrame.new(4.3, -1.2, -0.2) * CFrame.Angles(1.6, math.rad(-98),1.6)
Tools[4].Parent = plr.Character

Tools[5].Grip = CFrame.new(-6.5, -1.6, -0.2) * CFrame.Angles(1.6, math.rad(-250),1.6)
Tools[5].Parent = plr.Character

Tools[6].Grip = CFrame.new(6, -2.55, -0.2) * CFrame.Angles(1.6, math.rad(-115),1.6)
Tools[6].Parent = plr.Character

Tools[7].Grip = CFrame.new(1.55, 7.2, 0.1) * CFrame.Angles(1.6, math.rad(-10),1.6)
Tools[7].Parent = plr.Character

Tools[8].Grip = CFrame.new(-1.1, -1.2, -0.23) * CFrame.Angles(1.6, math.rad(-98),1.57)
Tools[8].Parent = plr.Character

Tools[9].Grip = CFrame.new(-2.8, -1.17, -0.17) * CFrame.Angles(1.6, math.rad(-99),1.6)
Tools[9].Parent = plr.Character

Tools[10].Grip = CFrame.new(0, 2.7, -0.2) * CFrame.Angles(1.575, math.rad(-175),1.575)
Tools[10].Parent = plr.Character

Tools[11].Grip = CFrame.new(-4.6, -1.1, -0.17) * CFrame.Angles(1.6, math.rad(-100),1.6)
Tools[11].Parent = plr.Character

Tools[12].Grip = CFrame.new(-6.3, -1.1, -0.17) * CFrame.Angles(1.6, math.rad(-100),1.6)
Tools[12].Parent = plr.Character

Tools[13].Grip = CFrame.new(-1, 6, -0.45) * CFrame.Angles(1.6, math.rad(-205),1.4)
Tools[13].Parent = plr.Character

end)

--_______________________________________________________________________________________________

Section:NewButton("Sword (10)", "", function()


local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
local Tools = plr.Backpack:GetChildren()

Tools[1].Grip = CFrame.new(0, -0.3, 0) * CFrame.Angles(1.58, math.rad(-360), 1.58)
Tools[1].Parent = plr.Character

Tools[2].Grip = CFrame.new(0.15, 1.7, -0.02) * CFrame.Angles(1.58, math.rad(90), 1.58)
Tools[2].Parent = plr.Character

Tools[3].Grip = CFrame.new(3, -0.9, -0.05) * CFrame.Angles(1.58, math.rad(-45), 1.58)
Tools[3].Parent = plr.Character

Tools[4].Grip = CFrame.new(-3.1, -0.67, -0.049) * CFrame.Angles(1.58, math.rad(-135), 1.58)
Tools[4].Parent = plr.Character

Tools[5].Grip = CFrame.new(2.2, -0.3, -0.03) * CFrame.Angles(1.58, math.rad(-360), 1.58)
Tools[5].Parent = plr.Character

Tools[6].Grip = CFrame.new(4.2, -0.3, 0) * CFrame.Angles(1.58, math.rad(-360), 1.58)
Tools[6].Parent = plr.Character

Tools[7].Grip = CFrame.new(6.2, -0.3, 0) * CFrame.Angles(1.58, math.rad(-360), 1.58)
Tools[7].Parent = plr.Character

Tools[8].Grip = CFrame.new(8.2, -0.3, 0) * CFrame.Angles(1.58, math.rad(-360), 1.58)
Tools[8].Parent = plr.Character

Tools[9].Grip = CFrame.new(10.2, -0.3, 0) * CFrame.Angles(1.58, math.rad(-360), 1.58)
Tools[9].Parent = plr.Character

Tools[10].Grip = CFrame.new(12.2, -0.3, 0) * CFrame.Angles(1.58, math.rad(-360), 1.58)
Tools[10].Parent = plr.Character

local hum = game.Players.LocalPlayer.Character.Humanoid
    
        for _,x in next, hum:GetPlayingAnimationTracks() do
            if x.Animation then
                x:Stop()
            end
        end
        
end)

--_______________________________________________________________________________________________

Section:NewButton("Pickaxe (8)", "", function()

local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
local Tools = plr.Backpack:GetChildren()

Tools[1].Grip = CFrame.new(-0.4, 0.6, 0) * CFrame.Angles(1.6, math.rad(-180), 1.58)
Tools[1].Parent = plr.Character

Tools[2].Grip = CFrame.new(-2.7, 0.6, 0) * CFrame.Angles(1.6, math.rad(-180), 1.58)
Tools[2].Parent = plr.Character

Tools[3].Grip = CFrame.new(-4.5, 0.6, 0) * CFrame.Angles(1.6, math.rad(-180), 1.58)
Tools[3].Parent = plr.Character

Tools[4].Grip = CFrame.new(-6.3, 0.6, 0) * CFrame.Angles(1.6, math.rad(-180), 1.58)
Tools[4].Parent = plr.Character

Tools[5].Grip = CFrame.new(-0.3, 6.85, -0.4) * CFrame.Angles(38.5, math.rad(-270), 2.3)
Tools[5].Parent = plr.Character

Tools[6].Grip = CFrame.new(1.8, 6.85, -0.4) * CFrame.Angles(38.5, math.rad(-270), 2.3)
Tools[6].Parent = plr.Character

Tools[7].Grip = CFrame.new(3.3, 5.4, 0.32) * CFrame.Angles(1.6, math.rad(-320), 1.6)
Tools[7].Parent = plr.Character

Tools[8].Grip = CFrame.new(-2.42, 6.6, 0.32) * CFrame.Angles(1.6, math.rad(-220), 1.6)
Tools[8].Parent = plr.Character

end)

--_______________________________________________________________________________________________

Section:NewButton("Railgun (12)", "", function()

local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
local Tools = plr.Backpack:GetChildren()

Tools[1].Grip = CFrame.new(1.1, -1.2, 0) * CFrame.Angles(-1.58, math.rad(-108), -1.58)
Tools[1].Parent = plr.Character

Tools[2].Grip = CFrame.new(2.7, -1.2, 0.02) * CFrame.Angles(-1.58, math.rad(-108), -1.58)
Tools[2].Parent = plr.Character

Tools[3].Grip = CFrame.new(4.5, -2.34, 0) * CFrame.Angles(-1.58, math.rad(-90), -1.58)
Tools[3].Parent = plr.Character

Tools[4].Grip = CFrame.new(4, 5.1, -0.07) * CFrame.Angles(-1.58, math.rad(-180), -1.58)
Tools[4].Parent = plr.Character

Tools[5].Grip = CFrame.new(-5.6, 0.9, -0.07) * CFrame.Angles(-1.58, math.rad(-305), -1.58)
Tools[5].Parent = plr.Character

Tools[6].Grip = CFrame.new(-1.29, 3.5, -0.07) * CFrame.Angles(-1.58, math.rad(-262), -1.58)
Tools[6].Parent = plr.Character

Tools[7].Grip = CFrame.new(4, 1, -0.07) * CFrame.Angles(-1.58, math.rad(-193), -1.58)
Tools[7].Parent = plr.Character

Tools[8].Grip = CFrame.new(-2.8, -0.8, 0) * CFrame.Angles(-1.58, math.rad(-25), -1.58)
Tools[8].Parent = plr.Character

Tools[9].Grip = CFrame.new(0.8, 4.8, -0.07) * CFrame.Angles(-1.58, math.rad(-270), -1.58)
Tools[9].Parent = plr.Character

Tools[10].Grip = CFrame.new(-2.3, -3.8, 0) * CFrame.Angles(-1.58, math.rad(-90), -1.58)
Tools[10].Parent = plr.Character

Tools[11].Grip = CFrame.new(-3, -3.8, 0) * CFrame.Angles(-1.58, math.rad(-90), -1.58)
Tools[11].Parent = plr.Character

Tools[12].Grip = CFrame.new(3, 4.8, -0.075) * CFrame.Angles(-1.58, math.rad(-270), -1.58)
Tools[12].Parent = plr.Character
        
end)

--_______________________________________________________________________________________________

Section:NewButton("Railgun v2 (23)", "", function()

local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
local Tools = plr.Backpack:GetChildren()

Tools[1].Grip = CFrame.new(1.1, -1.2, 0) * CFrame.Angles(-1.58, math.rad(-108), -1.58)
Tools[1].Parent = plr.Character

Tools[2].Grip = CFrame.new(2.7, -1.2, 0.02) * CFrame.Angles(-1.58, math.rad(-108), -1.58)
Tools[2].Parent = plr.Character

Tools[3].Grip = CFrame.new(4.5, -2.34, 0) * CFrame.Angles(-1.58, math.rad(-90), -1.58)
Tools[3].Parent = plr.Character

Tools[4].Grip = CFrame.new(4, 5.1, -0.07) * CFrame.Angles(-1.58, math.rad(-180), -1.58)
Tools[4].Parent = plr.Character

Tools[5].Grip = CFrame.new(-5.6, 0.9, -0.07) * CFrame.Angles(-1.58, math.rad(-305), -1.58)
Tools[5].Parent = plr.Character

Tools[6].Grip = CFrame.new(-1.29, 3.5, -0.07) * CFrame.Angles(-1.58, math.rad(-262), -1.58)
Tools[6].Parent = plr.Character

Tools[7].Grip = CFrame.new(4, 1, -0.07) * CFrame.Angles(-1.58, math.rad(-193), -1.58)
Tools[7].Parent = plr.Character

Tools[8].Grip = CFrame.new(-2.8, -0.8, 0) * CFrame.Angles(-1.58, math.rad(-25), -1.58)
Tools[8].Parent = plr.Character

Tools[9].Grip = CFrame.new(0.8, 4.8, -0.07) * CFrame.Angles(-1.58, math.rad(-270), -1.58)
Tools[9].Parent = plr.Character

Tools[10].Grip = CFrame.new(0.6, -2.8, 0) * CFrame.Angles(-1.58, math.rad(-80), -1.58)
Tools[10].Parent = plr.Character

Tools[11].Grip = CFrame.new(-7.3, -2.3, 0) * CFrame.Angles(-1.58, math.rad(-45), -1.58)
Tools[11].Parent = plr.Character

Tools[12].Grip = CFrame.new(1.2, 3.95, -0.062) * CFrame.Angles(-1.58, math.rad(45), -1.58)
Tools[12].Parent = plr.Character

Tools[13].Grip = CFrame.new(4.3, 5.3, -0.075) * CFrame.Angles(-1.58, math.rad(-270), -1.58)
Tools[13].Parent = plr.Character

Tools[14].Grip = CFrame.new(-4.3, -3.5, 0) * CFrame.Angles(-1.58, math.rad(-90), -1.58)
Tools[14].Parent = plr.Character

Tools[15].Grip = CFrame.new(6.6, 5.3, -0.075) * CFrame.Angles(-1.58, math.rad(-270), -1.58)
Tools[15].Parent = plr.Character

Tools[16].Grip = CFrame.new(-6.6, -3.5, 0) * CFrame.Angles(-1.58, math.rad(-90), -1.58)
Tools[16].Parent = plr.Character

Tools[17].Grip = CFrame.new(8.8, 5.3, -0.075) * CFrame.Angles(-1.58, math.rad(-270), -1.58)
Tools[17].Parent = plr.Character

Tools[18].Grip = CFrame.new(-8.8, -3.5, 0) * CFrame.Angles(-1.58, math.rad(-90), -1.58)
Tools[18].Parent = plr.Character

Tools[19].Grip = CFrame.new(11, 5.3, -0.075) * CFrame.Angles(-1.58, math.rad(-270), -1.58)
Tools[19].Parent = plr.Character

Tools[20].Grip = CFrame.new(-11, -3.5, 0) * CFrame.Angles(-1.58, math.rad(-90), -1.58)
Tools[20].Parent = plr.Character

Tools[21].Grip = CFrame.new(3.7, 4.2, -0.075) * CFrame.Angles(-1.58, math.rad(-250), -1.58)
Tools[21].Parent = plr.Character

Tools[22].Grip = CFrame.new(-0.8, -4.1, 0) * CFrame.Angles(-1.58, math.rad(250), -1.58)
Tools[22].Parent = plr.Character

Tools[23].Grip = CFrame.new(-0.7, -0.2, -0.2) * CFrame.Angles(1.57, math.rad(-270), 0)
Tools[23].Parent = plr.Character
        
end)

--_______________________________________________________________________________________________

Section:NewButton("Computer (11)", "", function()

local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
local Tools = plr.Backpack:GetChildren()

Tools[1].Grip = CFrame.new(0.8, 1.5, 0) * CFrame.Angles(1.575, math.rad(-180), 3.1)
Tools[1].Parent = plr.Character

Tools[2].Grip = CFrame.new(-0.8, -0.6, 0) * CFrame.Angles(1.575, math.rad(0), 3.1)
Tools[2].Parent = plr.Character

Tools[3].Grip = CFrame.new(3, 1.5, 0) * CFrame.Angles(1.575, math.rad(-180), 3.1)
Tools[3].Parent = plr.Character

Tools[4].Grip = CFrame.new(-3, -0.6, 0) * CFrame.Angles(1.575, math.rad(0), 3.1)
Tools[4].Parent = plr.Character

Tools[5].Grip = CFrame.new(5.2, 1.5, 0) * CFrame.Angles(1.575, math.rad(-180), 3.1)
Tools[5].Parent = plr.Character

Tools[6].Grip = CFrame.new(-5.2, -0.6, 0) * CFrame.Angles(1.575, math.rad(0), 3.1)
Tools[6].Parent = plr.Character

Tools[7].Grip = CFrame.new(1.1, 2.5, -2.95) * CFrame.Angles(1.575, math.rad(180), 4.68)
Tools[7].Parent = plr.Character

Tools[8].Grip = CFrame.new(-2.2, -3, -2.17) * CFrame.Angles(3.13, math.rad(0), 3.1)
Tools[8].Parent = plr.Character

Tools[9].Grip = CFrame.new(-4, -3, -2.1699) * CFrame.Angles(3.13, math.rad(0), 3.1)
Tools[9].Parent = plr.Character

Tools[10].Grip = CFrame.new(2.2, 3.9, -2.26) * CFrame.Angles(3.13, math.rad(0), -0.04)
Tools[10].Parent = plr.Character

Tools[11].Grip = CFrame.new(4, 3.9, -2.26) * CFrame.Angles(3.13, math.rad(0), -0.04)
Tools[11].Parent = plr.Character
        
end)

--_______________________________________________________________________________________________

Section:NewButton("Boombox arm (4)", "", function()

local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
local Tools = plr.Backpack:GetChildren()

Tools[1].Grip = CFrame.new(0.6, -0.1, -0.4) * CFrame.Angles(1.58, math.rad(-90), 0)
Tools[1].Parent = plr.Character

Tools[2].Grip = CFrame.new(0.6, -0.1, -0.3625) * CFrame.Angles(1.58, math.rad(-90), 1.58)
Tools[2].Parent = plr.Character

Tools[3].Grip = CFrame.new(0.6, -0.1, -0.359) * CFrame.Angles(0, math.rad(-90), 1.58)
Tools[3].Parent = plr.Character

Tools[4].Grip = CFrame.new(0.6, -0.1, -0.4) * CFrame.Angles(0, math.rad(-90), -3.15)
Tools[4].Parent = plr.Character
        
end)

--_______________________________________________________________________________________________

Section:NewButton("Phone (6)", "", function()
        
local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
local Tools = plr.Backpack:GetChildren()

Tools[1].Grip = CFrame.new(-1, 0.5, 0) * CFrame.Angles(0.2, math.rad(-180), 58.1)
Tools[1].Parent = plr.Character

Tools[2].Grip = CFrame.new(2.5, -0, 0) * CFrame.Angles(-0.2, math.rad(-180), -58.13)
Tools[2].Parent = plr.Character

Tools[3].Grip = CFrame.new(-2.5, 0.5, 0) * CFrame.Angles(0.2, math.rad(-180), 58.1)
Tools[3].Parent = plr.Character

Tools[4].Grip = CFrame.new(1, -0, 0) * CFrame.Angles(-0.2, math.rad(-180), -58.13)
Tools[4].Parent = plr.Character

Tools[5].Grip = CFrame.new(-4, 0.5, 0) * CFrame.Angles(0.2, math.rad(-180), 58.1)
Tools[5].Parent = plr.Character

Tools[6].Grip = CFrame.new(4, -0, 0) * CFrame.Angles(-0.2, math.rad(-180), -58.13)
Tools[6].Parent = plr.Character
end)


Section:NewButton("Small tophat (3)", "", function()
local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
local Tools = plr.Backpack:GetChildren()

Tools[1].Grip = CFrame.new(-1.5, -1.65, -1.9) * CFrame.Angles(1.58, math.rad(-180), 0)
Tools[1].Parent = plr.Character

Tools[2].Grip = CFrame.new(3.65, -1.65, -1.7) * CFrame.Angles(1.58, math.rad(180), -1.58)
Tools[2].Parent = plr.Character

Tools[3].Grip = CFrame.new(-3.625, -1.65, 1.25) * CFrame.Angles(1.58, math.rad(-180), 1.58)
Tools[3].Parent = plr.Character
        
end)

--_______________________________________________________________________________________________

Section:NewButton("Big tophat (5)", "", function()
local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
local Tools = plr.Backpack:GetChildren()

Tools[1].Grip = CFrame.new(-1.5, -1.65, -1.9) * CFrame.Angles(1.58, math.rad(-180), 0)
Tools[1].Parent = plr.Character

Tools[2].Grip = CFrame.new(3.65, -1.65, -1.7) * CFrame.Angles(1.58, math.rad(180), -1.58)
Tools[2].Parent = plr.Character

Tools[3].Grip = CFrame.new(-3.625, -1.65, 1.25) * CFrame.Angles(1.58, math.rad(-180), 1.58)
Tools[3].Parent = plr.Character

Tools[4].Grip = CFrame.new(6.3, -1.65, -1.7) * CFrame.Angles(1.58, math.rad(180), -1.58)
Tools[4].Parent = plr.Character

Tools[5].Grip = CFrame.new(-6.3, -1.65, 1.25) * CFrame.Angles(1.58, math.rad(-180), 1.58)
Tools[5].Parent = plr.Character
        
end)

--_______________________________________________________________________________________________

Section:NewButton("Huge tophat (7)", "", function()
local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
local Tools = plr.Backpack:GetChildren()

Tools[1].Grip = CFrame.new(-1.5, -1.65, -1.9) * CFrame.Angles(1.58, math.rad(-180), 0)
Tools[1].Parent = plr.Character

Tools[2].Grip = CFrame.new(3.65, -1.65, -1.7) * CFrame.Angles(1.58, math.rad(180), -1.58)
Tools[2].Parent = plr.Character

Tools[3].Grip = CFrame.new(-3.625, -1.65, 1.25) * CFrame.Angles(1.58, math.rad(-180), 1.58)
Tools[3].Parent = plr.Character

Tools[4].Grip = CFrame.new(6.3, -1.65, -1.7) * CFrame.Angles(1.58, math.rad(180), -1.58)
Tools[4].Parent = plr.Character

Tools[5].Grip = CFrame.new(-6.3, -1.65, 1.25) * CFrame.Angles(1.58, math.rad(-180), 1.58)
Tools[5].Parent = plr.Character

Tools[6].Grip = CFrame.new(9, -1.65, -1.7) * CFrame.Angles(1.58, math.rad(180), -1.58)
Tools[6].Parent = plr.Character

Tools[7].Grip = CFrame.new(-9, -1.65, 1.25) * CFrame.Angles(1.58, math.rad(-180), 1.58)
Tools[7].Parent = plr.Character
        
end)



--_______________________________________________________________________________________________






-- other scripts, these are not made by me but just stuff that might be useful, dm me if there are things u want added to this part


local Tab = Window:NewTab("Useful Stuff")
local Section = Tab:NewSection("Stuff")
-- comments...

Section:NewButton("Human dildo (r6 only)", "", function()

    local ch = game.Players.LocalPlayer.Character
    ch["Left Arm"]:Destroy()
    ch["Right Arm"]:Destroy()
    ch.Head.Mesh:Destroy()

end)    

Section:NewButton("AntiFling (only when standing still)", "", function()
local plr = game.Players.LocalPlayer
local UIS = game:GetService("UserInputService")

game:GetService("RunService").RenderStepped:Connect(function(rs)
    
if plr.Character.Humanoid.MoveDirection.X == 0 or plr.Character.Humanoid.MoveDirection.Z == 0 then
wait()
plr.Character.HumanoidRootPart.Anchored = true
end
end)

UIS.InputBegan:Connect(function(keypress, Chat)
    if Chat then return end
    wait()
    if keypress.KeyCode.Name == "W" or "A" or "S" or "D" then
    wait()
    plr.Character.HumanoidRootPart.Anchored = false
    end
end)
end)

Section:NewTextBox("Void User", "Void", function(skytarget)



    local plr = game:GetService("Players").LocalPlayer
    local character = plr.Character
    
    local ogpos = character.HumanoidRootPart.Position
    
character.HumanoidRootPart.CFrame = CFrame.new(0,900000000,0)
wait()

local Character = game.Players.LocalPlayer.Character
local Hum = {
    "BodyTypeScale",
    "BodyProportionScale",
    "BodyWidthScale",
    "BodyHeightScale",
    "BodyDepthScale",
    "HeadScale"
}

function Remove()
    repeat task.wait() until Character.LeftFoot:FindFirstChild("OriginalSize")
    Character.LeftFoot.OriginalSize:Destroy()
    Character.LeftLowerLeg.OriginalSize:Destroy()
    Character.LeftUpperLeg.OriginalSize:Destroy()
end

Character.LeftLowerLeg.LeftKneeRigAttachment.OriginalPosition:Destroy()
Character.LeftUpperLeg.LeftKneeRigAttachment.OriginalPosition:Destroy()
Character.LeftLowerLeg.LeftKneeRigAttachment:Destroy()
Character.LeftUpperLeg.LeftKneeRigAttachment:Destroy()

for i=1,6 do
    Remove()
    Character.Humanoid[Hum[i]]:Destroy()
end

wait(1)

function getplayer(input)
    local players = game:GetService("Players")

    for _, v in pairs (players:GetPlayers()) do
        if v.DisplayName:lower():sub(1, #input) == input:lower() then
            return players[v.Name]
        end
    end
end

local user = getplayer(skytarget)


NOW = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game.Players.LocalPlayer.Character.Humanoid.Name = 1
local l = game.Players.LocalPlayer.Character["1"]:Clone()
l.Parent = game.Players.LocalPlayer.Character
l.Name = "Humanoid"
wait(0.1)
game.Players.LocalPlayer.Character["1"]:Destroy()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Animate.Disabled = true
wait(0.1)
game.Players.LocalPlayer.Character.Animate.Disabled = false
game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
end
local function tp(player,player2)
local char1,char2=player.Character,player2.Character
if char1 and char2 then
char1.HumanoidRootPart.CFrame = char2.HumanoidRootPart.CFrame
end
end
local function getout(player,player2)
local char1,char2=player.Character,player2.Character
if char1 and char2 then
char1:MoveTo(char2.Head.Position)
end
end
tp(user, game.Players.LocalPlayer)
wait(0.1)
tp(user, game.Players.LocalPlayer)
wait(0.3)
getout(game.Players.LocalPlayer, user)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = NOW


wait()

    character:BreakJoints()
    plr.CharacterAdded:Wait()
    character = plr.Character
character:WaitForChild('HumanoidRootPart')
wait(0.15)
character.HumanoidRootPart.CFrame = CFrame.new(ogpos)

end)


Section:NewButton("Reload Character", "", function()
game.Players.PlayerAdded:connect(function(plr)
plr.CharacterAdded:connect(function(chr)
 repeat wait() until chr.Humanoid
 chr.Humanoid.Died:connect(function()
  plr.LoadCharacter()
 end)
end)
end)

local plr = game:GetService("Players").LocalPlayer
local character = plr.Character
local ogpos = character.HumanoidRootPart.Position
    character:BreakJoints()
    plr.CharacterAdded:Wait()
    character = plr.Character
character:WaitForChild('HumanoidRootPart')
wait(0.15)
character.HumanoidRootPart.CFrame = CFrame.new(ogpos)

end)

Section:NewButton("R15 Goblin Walk", "", function()

local Character = game.Players.LocalPlayer.Character
local Hum = {
    "BodyTypeScale",
    "BodyProportionScale",
    "BodyWidthScale",
    "BodyHeightScale",
    "BodyDepthScale",
    "HeadScale"
}

function Remove()
    repeat task.wait() until Character.LeftFoot:FindFirstChild("OriginalSize")
    Character.LeftLowerLeg.OriginalSize:Destroy()
    Character.LeftUpperLeg.OriginalSize:Destroy()
end

function Remove()
    repeat task.wait() until Character.RightFoot:FindFirstChild("OriginalSize")
    Character.RightLowerLeg.OriginalSize:Destroy()
    Character.RightUpperLeg.OriginalSize:Destroy()
end


Character.LeftLowerLeg.LeftKneeRigAttachment.OriginalPosition:Destroy()
Character.LeftUpperLeg.LeftKneeRigAttachment.OriginalPosition:Destroy()
Character.LeftLowerLeg.LeftKneeRigAttachment:Destroy()
Character.LeftUpperLeg.LeftKneeRigAttachment:Destroy()

Character.RightLowerLeg.RightKneeRigAttachment.OriginalPosition:Destroy()
Character.RightUpperLeg.RightKneeRigAttachment.OriginalPosition:Destroy()
Character.RightLowerLeg.RightKneeRigAttachment:Destroy()
Character.RightUpperLeg.RightKneeRigAttachment:Destroy()




for i=1,6 do
    Remove()
    Character.Humanoid[Hum[i]]:Destroy()
end

game.Players.LocalPlayer.Character.Humanoid.Name = 1
local l = game.Players.LocalPlayer.Character["1"]:Clone()
l.Parent = game.Players.LocalPlayer.Character

end)



Section:NewButton("Rejoin", "", function()
game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)    
end)


Section:NewButton("Unfocused Whitescreen", "", function()
if not setfpscap then return end

local UserInputService, RunService = game:GetService("UserInputService"), game:GetService("RunService")

UserInputService.WindowFocusReleased:Connect(function()
	RunService:Set3dRenderingEnabled(false); setfpscap(5)
end)

UserInputService.WindowFocused:Connect(function()
	RunService:Set3dRenderingEnabled(true); setfpscap(360)
end)
end) 

Section:NewButton("Generate Join Script to Clipboard", "", function()
local join_script = string.format("game:GetService('TeleportService'):TeleportToPlaceInstance(%s, '%s', game:GetService('Players').LocalPlayer)", game.PlaceId, game.JobId)
print(join_script)
setclipboard(join_script)
end)

--_______________________________________________________________________________________________
local Tab = Window:NewTab("Other Scripts")
local Section = Tab:NewSection("Other Scripts")

Section:NewButton("CMD-X", "", function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()

end)

--_______________________________________________________________________________________________

Section:NewButton("Infinite yield", "", function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()

end)

--_______________________________________________________________________________________________

Section:NewButton("Fling all (dont be annoying and abuse this)", "", function()

-- Attempting to put the 2 fling loadstrings into 1 pastebin to fix them.
loadstring(game:HttpGet("https://pastebin.com/raw/Ns8hkFDH", true))()

end)

--_______________________________________________________________________________________________

Section:NewButton("Leg's FE Admin", "", function()

loadstring(game:HttpGet('https://raw.githubusercontent.com/leg1337/legadmv2/main/legadminv2.lua'))()

end)



local Tab = Window:NewTab("UI Setting")


    local Section = Tab:NewSection("Toggle UI")

Section:NewKeybind("Select Keybind:", "keybind to toggle the gui", Enum.KeyCode.RightControl, function()
	Library:ToggleUI()
end)














--_______________________________________________________________________________________________
-- end of the ui so far, more stuff coming later when i actually learn lua lol


--Player tags, this just exists so that people who use the script can see certain people
--The pastebins are unlisted but still readable
    
    --Somn1ph0bia
    loadstring(game:HttpGet("https://pastebin.com/raw/M4vHABZN", true))()
    
    --iswattable
    loadstring(game:HttpGet("https://pastebin.com/raw/F1w3f2CQ", true))()
    
    --FalseValues
     loadstring(game:HttpGet("https://pastebin.com/raw/cQnk83gM", true))()

    --Somn1um
    loadstring(game:HttpGet("https://pastebin.com/raw/zwuLQSET", true))()

    --sad_Text123 (WHY, JUST WHY DID U WANT THIS?)
    loadstring(game:HttpGet("https://pastebin.com/raw/xRStuTck", true))()
    
    
    
    
    
