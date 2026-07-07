#!/data/data/com.termux/files/usr/bin/bash

random_sleep() {
  # Vygeneruj náhodné číslo v rozmezí 20000 až 60000 (milisekundy)
  random_ms=$((RANDOM % 40001 + 20000))
  echo $random_ms

  # Rozděl hodnotu na sekundy a zbytek (milisekundy)
  seconds=$((random_ms / 1000))
  milliseconds=$((random_ms % 1000))
  echo $seconds
  echo $milliseconds

  # Sestav čas ve formátu pro sleep
  sleep_time="${seconds}.${milliseconds}"
  echo $sleep_time

  # Použij příkaz sleep
  sleep $sleep_time
}

# Volání funkce
random_sleep

