@echo off
IF [%~1] == [/?] GOTO help
IF [%~1] == [-?] GOTO help

ECHO Initializing submodules...
git submodule init
IF [%~1] == [-u] (
  gsu.bat %~2
)
GOTO :eof

:help
ECHO GSI (Git Submodule Init) - Initializes all submodules
ECHO Usage:
ECHO   gsi [-u] [-r]
ECHO.
ECHO Where:
ECHO   -u  Is an optional parameter to imediately call GSU after a
ECHO       submodule initialization.
ECHO   -r  Tells GSU to execute --remote --rebase parameters