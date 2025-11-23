# GitHub'a Yükleme Adımları

## 1. GitHub'da Yeni Repository Oluşturun
- https://github.com/new adresine gidin
- Repository adını girin (örn: `roadnix`)
- Public veya Private seçin
- "Create repository" butonuna tıklayın

## 2. Terminal'de Şu Komutları Çalıştırın

```bash
# Proje dizinine gidin
cd /Users/arincakyildiz/Desktop/roadnix

# Tüm dosyaları git'e ekleyin
git add .

# İlk commit'i yapın
git commit -m "Initial commit: Roadnix trafik eğitim platformu"

# GitHub repository URL'inizi ekleyin (YOUR_USERNAME ve REPO_NAME'i değiştirin)
git remote add origin https://github.com/YOUR_USERNAME/REPO_NAME.git

# Ana branch'i main olarak ayarlayın
git branch -M main

# GitHub'a push edin
git push -u origin main
```

## Not
Eğer GitHub'da iki faktörlü kimlik doğrulama (2FA) kullanıyorsanız, şifre yerine Personal Access Token kullanmanız gerekebilir.

