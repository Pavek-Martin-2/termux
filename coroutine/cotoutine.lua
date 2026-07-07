-- 1. Definujeme funkci, kterou coroutina poběží
local funkce_pocitadlo = function(limit)
    for i = 1, limit do
        print("Coroutina počítá:", i)
        -- Pozastaví běh a vrátí řízení hlavnímu programu
        coroutine.yield(i) 
    end
    print("Coroutina dokončena!")
end

-- 2. Vytvoříme objekt coroutiny
local moje_coroutina = coroutine.create(funkce_pocitadlo)

-- 3. Postupně ji budíme pomocí resume
print("--- Start ---")
local stav, hodnota

-- První probuzení (předáme argument 'limit')
stav, hodnota = coroutine.resume(moje_coroutina, 3)
print("Hlavní program přijal:", hodnota)

-- Druhé probuzení
stav, hodnota = coroutine.resume(moje_coroutina)
print("Hlavní program přijal:", hodnota)

-- Třetí probuzení
stav, hodnota = coroutine.resume(moje_coroutina)
print("Hlavní program přijal:", hodnota)

-- Čtvrté probuzení (funkce už skončila)
stav, hodnota = coroutine.resume(moje_coroutina)
print("Stav po konci:", coroutine.status(moje_coroutina)) -- vypíše 'dead'
