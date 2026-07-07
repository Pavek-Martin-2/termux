#!/data/data/com.termux/files/usr/bin/bash

random_sleep() {
  # Vygeneruj náhodné číslo v rozmezí 20000 až 60000 (milisekundy)
  random_ms=$((RANDOM % 40001 + 20000))
  echo "$random_ms ms"

  # Převod milisekund na sekundy s desetinnou tečkou (např. 25.123)
  sleep_time=$(echo "scale=3; $random_ms / 1000" | bc)
  echo $sleep_time

  # Použij příkaz sleep
  sleep $sleep_time
}

# Volání funkce
random_sleep
