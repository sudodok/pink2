@echo off
echo ================================================
echo   ระบบการเงินคณะสีชมพู - Pink Team Finance
echo   กำลังเริ่มต้นเซิร์ฟเวอร์...
echo ================================================
echo.
echo เปิดเบราว์เซอร์ที่ http://localhost:8080
echo กด Ctrl+C ในหน้าต่างนี้เพื่อปิดระบบ
echo.
start "" http://localhost:8080
python -m http.server 8080
pause
