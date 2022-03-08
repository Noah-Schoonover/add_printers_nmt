CLS
@echo off
@setlocal enableextensions enabledelayedexpansion

set printers=
for /f "tokens=*" %%a in (__config.ini) do (
	set p=%%a
	IF /I "!p:~0,1!" NEQ "#" (
		set printers=!printers! !p!
	)
)

FOR %%a IN (%printers%) DO (
	echo adding printer: \\Acad-PrintBox\%%a
	rem rundll32 printui.dll PrintUIEntry /in /n\\Acad-PrintBox\%%a
)

pause
