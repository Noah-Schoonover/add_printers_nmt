CLS
@echo off
@setlocal enableextensions enabledelayedexpansion

set printers=
for /f "tokens=*" %%a in (printers.cfg) do (
	set p=%%a
	IF /I "!p:~0,1!" NEQ "#" (
		set printers=!printers! !p!
	)
)

FOR %%a IN (%printers%) DO (
	echo adding printer: \\Acad-PrintBox\%%a
	rundll32 printui.dll PrintUIEntry /in /n\\Acad-PrintBox\%%a
)

pause
