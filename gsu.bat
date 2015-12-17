@echo off
IF [%~1] == [/?] GOTO help
IF [%~1] == [-?] GOTO help

ECHO Updating submodules...
git submodule update
IF [%~1] EQU [-r] (
  ECHO Rebasing submodules...
  git submodule update --remote --rebase
)
GOTO :eof

:help
ECHO GSU (Git Submodule Update) - Updates all submodules
ECHO Usage:
ECHO   gsu [-r]
ECHO.
ECHO Where:
ECHO   -r  Tells GSU to execute --remote --rebase of
ECHO       git submodule parameters