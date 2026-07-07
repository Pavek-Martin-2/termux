math.randomseed(os.time())

-- Opravená funkce bez diakritiky
local function pockej(vterin)
    local cil = os.clock() + vterin
    while os.clock() < cil do end
end

local function generuj(id, limit)
    for i = 1, limit do
        local nahodne_cislo = math.random(1, 100)
        print(string.format("Smycka %d: %d (%d/%d)", id, nahodne_cislo, i, limit))
        coroutine.yield() 
    end
end

local coroutiny = {
    coroutine.create(function() generuj(1, 100) end),
    coroutine.create(function() generuj(2, 100) end),
    coroutine.create(function() generuj(3, 100) end)
}

print("--- Start ---")
while #coroutiny > 0 do
    for i = #coroutiny, 1, -1 do
        local co = coroutiny[i]
        coroutine.resume(co)
        
        if coroutine.status(co) == "dead" then
            table.remove(coroutiny, i)
        end
    end
    pockej(0.1) 
end
print("--- Hotovo ---")
