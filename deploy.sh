#!/bin/bash

# 📁 Put do tvog lokalnog projekta
PROJECT_DIR="/c/Users/HP/Downloads/termoelektrana_final_generator_dodan"

echo "📁 Ulazak u direktorij: $PROJECT_DIR"
cd "$PROJECT_DIR" || { echo "❌ Greška: direktorij ne postoji."; exit 1; }

echo "🔃 Inicijalizacija Git repozitorija..."
git init

echo "🔗 Povezivanje sa GitHub repoom..."
git remote remove origin 2>/dev/null
git remote add origin https://github.com/AhmedOsmic/cloud_computing.git

echo "📦 Dodavanje fajlova..."
git add .

echo "📝 Commit promjena..."
git commit -m "Finalna verzija termoelektrana projekta"

echo "🔁 Prebacivanje na 'main' branch..."
git branch -M main

echo "⬆️ Push na GitHub..."
git push -u origin main

echo "✅ Gotovo! Provjeri repo: https://github.com/AhmedOsmic/cloud_computing"
