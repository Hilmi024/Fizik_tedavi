@echo off
title Physiocare AI Baslat
echo ---------------------------------------------------
echo Physiocare AI Uygulamasi Baslatiliyor...
echo ---------------------------------------------------
echo.
echo Lutfen bekleyin, sunucu hazirlaniyor...
echo.
echo Eger bu pencerede 'npm' is not recognized hatasi gorurseniz,
echo Node.js yuklu degil demektir.
echo.

call npm run dev

if %errorlevel% neq 0 (
    echo.
    echo [HATA] Sunucu baslatilamadi.
    echo.
    echo Olasiliklar:
    echo 1. Node.js yuklu degil. (https://nodejs.org/ adresinden kurabilirsiniz)
    echo 2. 3000 portu baska bir uygulama tarafindan kullaniliyor.
    echo.
    echo Hata ayrintilari yukarida gorunuyor olmali.
    pause
    exit /b
)

pause
