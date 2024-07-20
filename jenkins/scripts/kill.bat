@echo off
echo Stopping and removing the application...

REM Stop Apache server on localhost using XAMPP
"C:\xampp\xampp_stop.exe"

REM Remove project files from htdocs
rd /S /Q C:\xampp\htdocs\jenkins-php-selenium-test

echo Application stopped and removed.
pause
