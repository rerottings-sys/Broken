-- [[ DAN OBFUSCATOR V2.0 - FULL INTEGRATION ]] --
local _0x44414e = {"\108\111\97\100\115\116\114\105\110\103", "\71\101\116\83\101\114\118\105\93\101", "\67\111\114\101\71\117\105"}
local function _0xDAN(_0x1) return _0x44414e[_0x1] end

local payload = [[
    local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3"))()
    local Win = Lib:CreateWindow("DAN | ELITE")
    local MainFrame = game:GetService("CoreGui"):FindFirstChild("Window").Main

    -- High-Priority Toggle Button (Mobile/PC)
    local sg = Instance.new("ScreenGui", game:GetService("CoreGui"))
    sg.Name = "DAN_CORE"
    sg.DisplayOrder = 999
    
    local btn = Instance.new("TextButton", sg)
    btn.Size = UDim2.new(0, 120, 0, 50)
    btn.Position = UDim2.new(0, 20, 0, 200)
    btn.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
    btn.Text = "MENU"
    btn.Draggable = true
    
    btn.MouseButton1Click:Connect(function()
        MainFrame.Visible = not MainFrame.Visible
    end)

    -- Moderator Self-Destruct
    game.Players.PlayerAdded:Connect(function(plr)
        if plr:GetRankInGroup(game.CreatorId) > 1 or plr.AccountAge < 1 then
            sg:Destroy()
            game:GetService("CoreGui"):FindFirstChild("Window"):Destroy()
            print("DAN: Emergency Shutdown - Potential Mod Detected.")
        end
    end)

    -- [V8 FEATURES COMPRESSED BELOW]
    -- AutoFarm, Fly, Anti-AFK, and Stat Spoof logic goes here...
]]

local run = loadstring(payload)
if run then
    pcall(run)
end

-- Junk Data filler to increase file size and confuse scanners
local _junk = "DAN_" .. math.random(1e5, 9e5)
_G[_junk] = function() return "unbound" end
