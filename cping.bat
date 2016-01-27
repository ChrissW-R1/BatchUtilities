@echo off
:start

IF "%1" == "/?" GOTO help

ECHO Start continuous ping request to %1
ECHO.
:loop
ping -a -t %1
GOTO loop

:help
ECHO This script executes a continuous ping request. Until you kill it with [CTRL] + [C].
ECHO.
ECHO Syntax: cping ip
ECHO.
ECHO ip	hostname or ip to ping
ECHO 	like 192.168.0.1 or google.com

:end
@echo on
