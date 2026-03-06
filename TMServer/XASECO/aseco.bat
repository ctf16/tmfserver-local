@echo off
REM ==============================================
REM XASECO Startup Script for Oblivion Server
REM ==============================================

REM Change this path if PHP is installed elsewhere:
set PHP_PATH=C:\php\php.exe

REM Run XASECO main script
%PHP_PATH% aseco.php

pause