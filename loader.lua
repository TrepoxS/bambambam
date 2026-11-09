local ts = tostring(math.floor(os.time() or tick())) .. "_" .. tostring(math.random(10000, 99999))
local url = "https://raw.githubusercontent.com/TrepoxS/bambambam/main/main.lua?v=" .. ts
local success, content = pcall(function()
    return game:HttpGet(url)
end)

if success and content and #content > 1000 then
    local fn, err = (loadstring or load)(content)
    if fn then
        return fn()
    end
else
    local fallback = game:HttpGet("https://raw.githubusercontent.com/TrepoxS/bambambam/main/main.lua")
    return ((loadstring or load)(fallback))()
end
