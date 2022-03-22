@echo off

IF "%1"=="" GOTO TeamViewer

:Loop
IF "%1"=="" GOTO Continue
	XCOPY "%1" "%~dp0\" /Y/B/J/R/H/G/C/V/E /F
	pause
SHIFT
GOTO Loop
:Continue
EXIT

:TeamViewer
ECHO Veuillez patienter .
ECHO Verrification des mises a jour et mise a jpur de l'assistance le cas echeant en cours ..
start /B /wait %~dp0\git\mingw32\bin\git.exe pull
pause
exit
ECHO L'assistance ne va pas tarder a demarrer, nous verifions et nous fermons les autres instances de TeamViewer ...
START /B /WAIT %SystemRoot%\System32\taskkill.exe /F /im teamviewer.exe > NUL 2>&1

.\TeamViewerQS.exe
