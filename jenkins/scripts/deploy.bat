@echo off
echo Deploying the application...

:: Start the Apache server
:: Note: You need to have Apache installed and configured to serve the directory where your PHP application is located.
:: Replace `C:\path\to\your\php\application` with the actual path to your PHP application
start "" "C:\path\to\apache\bin\httpd.exe"

timeout /t 1 /nobreak >nul

echo Now...
echo Visit http://localhost to see your PHP application in action.

