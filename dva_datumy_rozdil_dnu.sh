#!/data/data/com.termux/files/usr/bin/bash
# toto cele mi navrhnul Microsoft Copilot

# dny_mezi_datami.sh
# Použití: ./dny_mezi_datami.sh "15.10.2025" "20.10.2025"
# Podporované formáty: yyyy-mm-dd, dd.mm.yyyy, d.m.yyyy, M/D/YYYY, MM/DD/YYYY a volné rozpoznání date -d

set -euo pipefail

if [ "$#" -lt 2 ]; then
  echo "Použití: $0 DATUM1 DATUM2"
  echo "Příklad: $0 2025-10-15 20.10.2025"
  exit 1
fi

raw1="$1"
raw2="$2"

to_epoch() {
  local s="$1"
  # Pokud se jedná o český formát dd.mm.yyyy, přepočti na yyyy-mm-dd (date -d je většinou schopné číst dd.mm.yyyy taky,
  # ale pro jistotu vyměním tečky)
  if [[ "$s" =~ ^[0-9]{1,2}\.[0-9]{1,2}\.[0-9]{4}$ ]]; then
    IFS='.' read -r d m y <<< "$s"
    s="$y-$m-$d"
  fi
  # Použijeme GNU date -d pro převod na sekundy od epochy
  # date vrací chybu pokud nelze parsovat
  # date -d "$s" +%s 2>/dev/null || {
  date -u -d "$s" +%s 2>/dev/null || {
    echo "Nelze rozpoznat datum: $1" >&2
    exit 2
  }
}

epoch1=$(to_epoch "$raw1")
epoch2=$(to_epoch "$raw2")

# rozdíl v sekundách, pak převod na celé dny
diffsec=$(( epoch2 - epoch1 ))
# výsledek jako absolutní počet dní
days=$(( diffsec / 86400 ))
if [ "$days" -lt 0 ]; then
  days=$(( -days ))
fi

# Formátovaný výstup
format_date() {
  date -d "@$1" +%Y-%m-%d
}

echo "První datum : $(format_date "$epoch1")"
echo "Druhé datum : $(format_date "$epoch2")"
echo "Počet dnů mezi daty: $days"

