CLS
@echo off
@setlocal enableextensions enabledelayedexpansion

REM set paths to destination & backup scripts
SET workingDir=%~dp0
SET scriptReadFromIni=%workingDir%readFromIni.bat
SET configPath=%workingDir%__config.ini

set printers=
for /f "tokens=* USEBACKQ" %%F in (`call "%scriptReadFromIni%" "%configPath%" PrinterConfig addPrinter`) do (
	set printers=!printers! %%F
)

FOR %%a IN (%printers%) DO (
	echo adding printer: \\Acad-PrintBox\%%a
	rundll32 printui.dll PrintUIEntry /in /n\\Acad-PrintBox\%%a
)

pause