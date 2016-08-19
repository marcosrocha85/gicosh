@echo off
SETLOCAL
SET comment=%*
IF /I [comment] == [] GOTO erro
CALL :dequote comment
git commit -m "%comment%"
goto fim

:dequote
FOR /f "delims=" %%A IN ('echo %%%1%%') DO SET %1=%%~A
goto :eof

:erro
echo You should type a comment.
echo.
echo Ex:
echo   gc "Added validation of user's empty password on controller X"
echo or
echo   gc Added validation of user's empty password on controller X
echo.

:fim