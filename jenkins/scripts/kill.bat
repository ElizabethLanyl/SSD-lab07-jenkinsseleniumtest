@echo off
echo Stopping the application...

:: Stop the Apache server
:: Note: You need to have Apache installed and configured properly
:: The following assumes `httpd.exe` is the Apache executable name
taskkill /F /IM httpd.exe

echo Application stopped.
