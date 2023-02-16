#!/bin/bash

GITHUB_USER="mariocmoran"

id_url=$(curl -s "https://api.github.com/users/$GITHUB_USER" | jq -r '.id')
created_at_url=$(curl -s "https://api.github.com/users/$GITHUB_USER" | jq -r '.created_at')

echo "Hola $GITHUB_USER. User ID: $id_url. Cuenta fue creada el: $created_at_url."

fecha=$(date +%y-%m-%d)
mkdir -p "./tmp/$fecha/" && touch "./tmp/$fecha/saludos.log"

echo "Hola $GITHUB_USER. User ID: $id_url. Cuenta fue creada el: $created_at_url." >> "./tmp/$fecha/saludos.log"
