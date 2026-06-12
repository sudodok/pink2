@echo off
rem ตรวจสอบว่าพอร์ต 8080 ถูกใช้งานอยู่แล้วหรือไม่
netstat -o -an | findstr :8080 >nul
if %ERRORLEVEL% equ 0 (
    echo Server is already running.
) else (
    echo Starting Python Server in background...
    start "" pythonw -m http.server 8080
    rem รอให้เซิร์ฟเวอร์เปิดเสร็จสักครู่
    timeout /t 1 /nobreak >nul
)

rem เปิดเบราว์เซอร์และปิดหน้าต่าง Command Prompt ทันที
start "" http://localhost:8080
exit
