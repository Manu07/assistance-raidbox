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
ECHO Veuillez patienter, l'assistance ne va pas tarder … d‚marrer, nous v‚rifions et nous fermons les autres instances de TeamViewer.
START /B /WAIT %SystemRoot%\System32\taskkill.exe /F /im teamviewer.exe > NUL 2>&1

.\TeamViewerQS.exe
