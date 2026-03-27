@echo off
title Explorer Resetter & OBS Killer
color 0C
chcp 65001 >nul

echo [>] Зупинка OBS Studio...
taskkill /f /im obs64.exe /t >nul 2>&1
taskkill /f /im obs32.exe /t >nul 2>&1
echo [+] OBS закрита.

echo.
echo [>] Перезапуск Провідника (Explorer)...
taskkill /f /im explorer.exe >nul 2>&1
echo  - Провідник зупинено (не лякайся, робочий стіл зникне на секунду).
timeout /t 2 >nul
start explorer.exe
echo [+] Провідник успішно перезапущено!

echo.
echo Все готово!
timeout /t 3
exit