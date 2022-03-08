CLS
@echo off
@setlocal enableextensions enabledelayedexpansion

set printers=
for /f "tokens=*" %%a in (printers.cfg) do (
	set p=%%a
	IF /I "!p:~0,1!" NEQ "#" (
		echo adding printer: \\Acad-PrintBox\!p!
		IF EXIST \\Acad-PrintBox\!p! (
			start rundll32 printui.dll PrintUIEntry /in /n\\Acad-PrintBox\!p!
		)
	)
)
pause
