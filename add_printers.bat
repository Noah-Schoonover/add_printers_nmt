CLS
@echo off
@setlocal enableextensions enabledelayedexpansion
cd /d %~dp0
set printers=
for /f "tokens=*" %%a in (%~dp0printers.cfg) do (
	set p=%%a
	IF /I "!p:~0,1!" NEQ "#" (
		echo adding printer: \\Acad-PrintBox\!p!
		start rundll32 printui.dll PrintUIEntry /in /n\\Acad-PrintBox\!p!
	)
)
pause
