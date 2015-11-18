@echo off
IF [%~1] == [/?] GOTO help
IF [%~1] == [-?] GOTO help

ECHO Updating submodules...
git submodule update
IF [%~1] NEQ [--no-rebase] (
  ECHO Rebasing submodules...
  git submodule update --remote --rebase
)
GOTO :eof

:help
ECHO GSU (Git Submodule Update) - Updates all submodules
ECHO Usage:
ECHO   gsu [--no-rebase]
ECHO.
ECHO Where:
ECHO   --no-rebase  Tells GSU to not execute --remote --rebase of
ECHO                git submodule parameters