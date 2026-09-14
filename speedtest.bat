@echo off
echo ===================================================
echo      DANIELDB v1.0 - HIGH SPEED BENCHMARK
echo ===================================================
echo.
echo [Step 1] Clearing database for clean test...
DanielDB.exe CLEAR
echo.
echo [Step 2] FLOODING DATABASE WITH 100 RECORDS...
echo Please wait, checking NVMe/SSD write speed...
echo.

:: Запоминаем время старта
set "start_time=%time%"

:: Цикл Windows: отправляет 100 команд AUTOADD подряд!
for /L %%i in (1,1,100) do (
    DanielDB.exe AUTOADD "Benchmark secure record number %%i"
)

echo.
echo [Step 3] UPDATING RECORDS TO TEST UPDATE SPEED...
for /L %%i in (1,1,20) do (
    DanielDB.exe UPDATE %%i "Updated lightning fast speed %%i"
)

echo.
echo [Step 4] FETCHING FINAL DATABASE STATISTICS...
DanielDB.exe STATS
DanielDB.exe COUNT

echo.
echo ===================================================
echo   BENCHMARK COMPLETED!
echo   Start Time: %start_time%
echo   End Time:   %time%
echo ===================================================
pause
