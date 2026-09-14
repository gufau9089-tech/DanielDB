@echo off
echo ===================================================
echo     STARTING INTEGRATION TEST FOR DANIELDB
echo ===================================================
echo.

echo [Step 1] Clearing database before test...
DanielDB.exe CLEAR

echo [Step 2] Adding first element manually (ID 5)...
DanielDB.exe ADD 5 "Buy milk and fresh bread"

echo [Step 3] Adding second element via auto-increment...
DanielDB.exe AUTOADD "Study parallel multithreading tomorrow"

echo [Step 4] Adding third element via auto-increment...
DanielDB.exe AUTOADD "Launch DanielDB sales on Gumroad"

echo [Step 5] Requesting elements count (COUNT)...
DanielDB.exe COUNT

echo [Step 6] Printing database statistics (STATS)...
DanielDB.exe STATS

echo [Step 7] Creating binary database backup (BACKUP)...
DanielDB.exe BACKUP test_snapshot.ddb

echo [Step 8] Exporting human-readable text report (EXPORT)...
DanielDB.exe EXPORT human_report.txt

echo.
echo ===================================================
echo   TEST FINISHED! Check the files in program folder.
echo ===================================================
pause
