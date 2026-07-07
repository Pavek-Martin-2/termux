math.randomseed(os.time()) -- Inicializace generátoru náhodných čísel

-- Funkce, která bude běžet v coroutině
local function generuj(id, pocet)
    for i = 1, pocet do
        local nahodne_cislo = math.random(1, 100)
        print(string.format("Smyčka %d: vygenerovala %d (krok %d/%d)", id, nahodne_cislo, i, pocet))
        
        -- Zásadní krok: pozastavíme coroutinu a předáme řízení zpět hlavnímu cyklu
        coroutine.yield() 
    end
end

-- Vytvoření tří coroutin
local coroutiny = {
    coroutine.create(function() generuj(1, 3) end),
    coroutine.create(function() generuj(2, 3) end),
    coroutine.create(function() generuj(3, 3) end)
}

-- "Plánovač", který je postupně budí
print("--- Start paralelního běhu ---")
local bezi = true
while bezi do
    bezi = false
    for i, co in ipairs(coroutiny) do
        -- Pokud coroutina ještě neskončila, probudíme ji
        if coroutine.status(co) ~= "dead" then
            coroutine.resume(co)
            bezi = true -- Označíme, že stále máme aktivní úkoly
        end
    end
end
print("--- Hotovo ---")
