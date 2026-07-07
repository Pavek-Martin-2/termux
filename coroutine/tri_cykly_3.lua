--math.randomseed(os.time())

local function generuj(id, limit, delay)
    local pristi_cas = os.clock() + delay
    for i = 1, limit do
        -- Coroutina sama hlídá, jestli už uplynul její čas
        while os.clock() < pristi_cas do
            coroutine.yield() -- Pokud ne, uvolní místo ostatním
        end
        
        print(string.format("Smycka %d: %d (pauza %.1fs)", id, math.random(1, 100), delay))
        pristi_cas = os.clock() + delay
        coroutine.yield()
    end
end

local coroutiny = {
    coroutine.create(function() generuj(1, 5, 0.5) end), -- Rychlá (každých 0.5s)
    coroutine.create(function() generuj(2, 5, 1.2) end), -- Pomalá (každých 1.2s)
    coroutine.create(function() generuj(3, 5, 2.0) end)  -- Nejpomalejší (každé 2s)
}

print("--- Start ruznych rychlosti ---")
while #coroutiny > 0 do
    for i = #coroutiny, 1, -1 do
        local co = coroutiny[i]
        coroutine.resume(co)
        if coroutine.status(co) == "dead" then
            table.remove(coroutiny, i)
        end
    end
end
print("--- Hotovo ---")

