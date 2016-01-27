@echo off

IF "%1" == "/?" GOTO help

ECHO Searching for "%1" in any JAR file located in "%CD%"
ECHO.
ECHO Found it in...
FOR /R %%J in (*.jar) do @jar -tvf "%%J" | FIND "%1" > NUL && ECHO %%J
GOTO end

:help
ECHO This script searches for (part of) a filename in all JARs
ECHO.
ECHO Syntax: findInJar s
ECHO.
ECHO s	part of a filename to search for in any JAR file
ECHO 	like .xml for all XML files or commons- for all Apache Commons libraries

:end
@echo on
