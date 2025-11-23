#!/bin/bash

# Xcode lisansı kontrolü
if ! xcodebuild -version &>/dev/null; then
    echo "⚠️  Xcode lisansı kabul edilmemiş!"
    echo "Lütfen önce şu komutu çalıştırın:"
    echo "sudo xcodebuild -license accept"
    echo ""
    read -p "Xcode lisansını kabul ettiniz mi? (y/n): " answer
    if [ "$answer" != "y" ]; then
        echo "İşlem iptal edildi."
        exit 1
    fi
fi

echo "🚀 GitHub'a yükleme başlatılıyor..."

cd /Users/arincakyildiz/Desktop/roadnix

# Git repository başlat (eğer başlatılmadıysa)
if [ ! -d .git ]; then
    echo "📦 Git repository başlatılıyor..."
    git init
fi

# Git yapılandırması
git config user.name "arincakyildiz" 2>/dev/null
git config user.email "arincakyildiz@users.noreply.github.com" 2>/dev/null

# Remote'u ekle
echo "🔗 Remote ekleniyor..."
git remote remove origin 2>/dev/null
git remote add origin https://github.com/arincakyildiz/roadnix.git

# Branch'i main olarak ayarla
echo "🌿 Branch ayarlanıyor..."
git branch -M main

# Tüm dosyaları ekle
echo "📦 Dosyalar ekleniyor..."
git add .

# Commit yap
echo "💾 Commit yapılıyor..."
git commit -m "Initial commit: Roadnix trafik eğitim platformu - README ve repository açıklamaları eklendi" || {
    echo "⚠️  Commit yapılamadı. Değişiklik yoksa bu normal."
}

# GitHub'a push et
echo "⬆️  GitHub'a yükleniyor..."
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Başarılı! Proje GitHub'a yüklendi:"
    echo "   https://github.com/arincakyildiz/roadnix"
else
    echo ""
    echo "❌ Push başarısız oldu. Lütfen:"
    echo "   1. Xcode lisansını kabul ettiğinizden emin olun"
    echo "   2. GitHub kimlik bilgilerinizi kontrol edin"
    echo "   3. İnternet bağlantınızı kontrol edin"
fi

