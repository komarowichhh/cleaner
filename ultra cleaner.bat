@echo off
title STOP ENGINE: OBS, Explorer & Dead Space
color 0C
chcp 65001 >nul

echo ===================================================
echo   АКТИВАЦІЯ РЕЖИМУ ТЕРМІНОВОЇ ЗУПИНКИ
echo ===================================================
echo.

:: --- ЗУПИНКА ГРИ ---
echo [>] Зупинка Dead Space...
taskkill /f /im DeadSpace.exe /t >nul 2>&1
taskkill /f /im "Dead Space.exe" /t >nul 2>&1
echo [+] Dead Space оброблено.

:: --- ЗУПИНКА OBS ---
echo [>] Зупинка OBS Studio...
taskkill /f /im obs64.exe /t >nul 2>&1
taskkill /f /im obs32.exe /t >nul 2>&1
echo [+] OBS закрита.
echo.

:: --- ПЕРЕЗАПУСК ПРОВІДНИКА ---
echo [>] ПЕРЕЗАВАНТАЖЕННЯ EXPLORER.EXE...
taskkill /f /im explorer.exe >nul 2>&1
echo  - Провідник зупинено (робочий стіл зникне на мить).
timeout /t 2 >nul
start explorer.exe
echo [+] Провідник знову в строю!

echo.
echo ===================================================
echo   ВСЕ ЗУПИНЕНО ТА ОНОВЛЕНО!
echo ===================================================
timeout /t 3
exit