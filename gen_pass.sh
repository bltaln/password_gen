#!/bin/bash

# Afișează mesajul de deschidere
echo "|**************************************************|"
echo "|********  Programul a fost pornit.   *************|"
echo "|****** Script dezvoltat de www.linecode.ro *******|"
echo "|**************************************************|"

# Funcție pentru generarea parolei
generate_password() {
  # Definește setul de caractere pentru generarea parolei
  characters="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_+=-"
  
  # Lungimea parolei dorite
  password_length=8
  
  # Generează parola
  password=$(openssl rand -base64 48 | tr -dc "$characters" | head -c "$password_length")
  
  # Afișează parola generată
  echo "|**** Parola generată: [ $password ] *****"
}

# Generează și afișează o parolă
generate_password

# Poți adăuga orice alte acțiuni dorești să fie realizate în continuare în scriptul tău.

