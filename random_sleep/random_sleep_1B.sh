#!/data/data/com.termux/files/usr/bin/bash

# Funkce pro náhodné čekání
random_sleep() {
  # Generování náhodného času mezi 20 a 60 sekundami s milisekundami
  local sleep_time=$(awk -v min=20 -v max=60 'BEGIN{srand(); print min+((max-min)*rand())}')
   echo $sleep_time

  # Použití příkazu sleep s časem v sekundách a milisekundách
  sleep $sleep_time
}

# Zavolání funkce
random_sleep

