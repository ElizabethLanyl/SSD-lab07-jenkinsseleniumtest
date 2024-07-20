@echo off
echo Starting deployment...

REM Start Apache server on localhost using XAMPP
"C:\xampp\xampp_start.exe"

REM Copy project files to htdocs
xcopy /E /I /Y C:\ProgramData\Jenkins\.jenkins\workspace\lab07b\src C:\xampp\htdocs\jenkins-php-selenium-test

echo Deployment completed.
echo Visit http://localhost:81/jenkins-php-selenium-test to see your PHP application in action.
pause

