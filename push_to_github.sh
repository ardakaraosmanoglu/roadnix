#!/bin/bash

# GitHub'a yükleme scripti
# Kullanım: bash push_to_github.sh

echo "🚀 GitHub'a yükleme başlatılıyor..."

# Remote'u ekle (eğer yoksa)
git remote remove origin 2>/dev/null
git remote add origin https://github.com/arincakyildiz/roadnix.git

# Branch'i main olarak ayarla
git branch -M main

# Tüm dosyaları ekle
echo "📦 Dosyalar ekleniyor..."
git add .

# Commit yap
echo "💾 Commit yapılıyor..."
git commit -m "Initial commit: Roadnix trafik eğitim platformu - README ve repository açıklamaları eklendi"

# GitHub'a push et
echo "⬆️  GitHub'a yükleniyor..."
git push -u origin main

echo "✅ Tamamlandı! Proje GitHub'a yüklendi: https://github.com/arincakyildiz/roadnix"

