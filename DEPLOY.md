# Projeyi Halka Açık Yayınlama (Deployment)

Bu proje şu anda **Next.js** kullanılarak geliştirilmiştir. Projeyi internette herkesin erişebileceği şekilde yayınlamak için en kolay ve ücretsiz yöntem **Vercel** kullanmaktır.

## ⚠️ ÖNEMLİ UYARI: Veri Kaydı (Local Storage)
Bu proje şu an verileri (hastalar, egzersizler vb.) tarayıcının hafızasında (**localStorage**) tutmaktadır.
Bunun anlamı şudur:
1. **Veriler sadece sizin bilgisayarınızda kalır.**
2. Siz Admin panelinden bir hasta eklerseniz, o hasta kendi evindeki bilgisayardan girdiğinde **sizin eklediğiniz veriyi göremez.**
3. Gerçek bir hastane kullanımı için verilerin ortak bir **Veritabanında (Database)** tutulması gerekir.

**Eğer bu projeyi sadece bir DEMO (Sunum) olarak kullanacaksanız:**
Aşağıdaki adımları takip ederek yayınlayabilirsiniz. Tek bir bilgisayardan tüm rolleri (Admin, Doktor, Hasta) test edebilirsiniz.

---

## Adım 1: Hazırlık (Git Kurulumu)
Bilgisayarınızda "Git" yazılımının yüklü olması gerekmektedir.
1. [git-scm.com/download/win](https://git-scm.com/download/win) adresine gidin.
2. "Click here to download" diyerek indirin ve kurun.
3. Kurulum sırasında sürekli "Next" diyerek ilerleyebilirsiniz, varsayılan ayarlar uygundur.
4. **ÖNEMLİ:** Kurulum bittikten sonra bu pencereyi (VS Code veya terminali) tamamen kapatıp yeniden açmanız gerekir.

## Adım 2: GitHub Hesabı ve Depo Oluşturma
1. [github.com](https://github.com/) adresinden ücretsiz bir hesap oluşturun.
2. Sağ üstteki **+** işaretine basıp **"New repository"** seçeneğini tıklayın.
3. **Repository name:** `physiocare-demo` (veya istediğiniz bir isim).
4. **ÖNEMLİ:** "Public" yerine **"Private"** seçeneğini işaretleyin. (Böylece kodlarınızı sadece siz görebilirsiniz).
5. "Create repository" butonuna basın.

## Adım 3: Projeyi Yükleme
Proje klasörünüzde terminali açın (VS Code'da `Ctrl + ş` veya `Ctrl + ` ` tuşu) ve şu komutları sırasıyla yazın:

```bash
# 1. Git'i başlat
git init

# 2. Tüm dosyaları ekle
git add .

# 3. İlk kaydı oluştur
git commit -m "Proje baslatildi"

# 4. Ana dal ismini ayarla
git branch -M main

# 5. GitHub deponuzu bağlayın (Aşağıdaki linki kendi deponuzdan kopyalayın!)
# Örnek: git remote add origin https://github.com/KULLANICI_ADINIZ/physiocare-demo.git
git remote add origin https://github.com/SIZIN_KULLANICI_ADINIZ/PROJE_ADINIZ.git

# 6. Dosyaları gönderin
git push -u origin main
```

*(Not: 6. adımda GitHub kullanıcı adı ve şifrenizi sorabilir. Şifre yerine GitHub'dan alacağınız "Personal Access Token"ı kullanmanız gerekebilir veya tarayıcıdan giriş yapmanızı isteyebilir.)*

## Adım 3: Vercel ile Yayınlama
1. [vercel.com](https://vercel.com/) adresine gidin ve "Sign Up" diyerek **GitHub hesabınızla** giriş yapın.
2. "Add New..." -> "Project" butonuna tıklayın.
3. GitHub hesabınızdaki `physiocare-demo` projesini seçin ve "Import" deyin.
4. Hiçbir ayarı değiştirmeden **"Deploy"** butonuna basın.

## Sonuç
Yaklaşık 1-2 dakika içinde Vercel size `https://physiocare-demo.vercel.app` gibi bir link verecektir.
Bu linki herkese gönderebilirsiniz.

---

## Gerçek Kullanım İçin Ne Gerekli?
Eğer bu sistemi hastanede gerçekten kullanmak istiyorsanız, projenin "Backend" (Arka Plan) kısmının yazılması gerekir:
1. **Veritabanı:** PostgreSQL veya MongoDB gibi bir veritabanı bağlanmalı.
2. **Kimlik Doğrulama:** Kullanıcıların şifreleri güvenli bir şekilde sunucuda tutulmalı.
3. **API:** Veriler `localStorage` yerine sunucuya kaydedilmeli.

Bu geliştirmeler için daha ileri düzey bir yazılım geliştirme süreci gereklidir.
