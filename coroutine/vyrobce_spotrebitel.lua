-- Funkce pro odeslání dat (výrobce ji používá k předání hodnoty)
function odeslat(x)
    coroutine.yield(x)
end

-- Funkce pro příjem dat (spotřebitel nebo filtr ji používá k probuzení zdroje)
function prijmout(zdroj)
    local status, hodnota = coroutine.resume(zdroj)
    return hodnota
end

-- 1. VÝROBCE: Generuje čísla
function vyrobce()
    return coroutine.create(function()
        for i = 1, 5 do
            print("Výrobce: Generuji " .. i)
            odeslat(i)
        end
    end)
end

-- 2. FILTR: Bere data od výrobce a zdvojnásobí je
function filtr(zdroj)
    return coroutine.create(function()
        while true do
            local x = prijmout(zdroj)
            if not x then break end -- Konec, pokud výrobce dohrál
            print("Filtr: Zpracovávám " .. x)
            odeslat(x * 2)
        end
    end)
end

-- 3. SPOTŘEBITEL: Finální článek řetězce, který vše spouští
function spotrebitel(zdroj)
    while true do
        local x = prijmout(zdroj)
        if not x then break end
        print("Spotřebitel: Dostal jsem " .. x)
        print("--------------------")
    end
end

-- Spuštění celého řetězce:
-- Spotřebitel táhne data z filtru, filtr táhne data z výrobce.
local p = vyrobce()
local f = filtr(p)
spotrebitel(f)
