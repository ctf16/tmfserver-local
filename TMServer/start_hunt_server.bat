@echo off
REM ==============================================
REM One-click startup for Oblivion's TrackMania Server
REM ==============================================

REM Paths (edit these if your install is different)
set SERVER_PATH=C:\TMServer
set XASECO_PATH=C:\TMServer\XASECO
set PHP_PATH=C:\php\php.exe
set GAMEDATA=C:\TMServer\GameData

echo Starting TrackMania United Forever Dedicated Server...
start cmd /k "%SERVER_PATH%\TrackmaniaServer.exe /dedicated_cfg=%GAMEDATA%\Config\dedicated_cfg.txt /game_settings=%GAMEDATA%\Tracks\MatchSettings\oblivionserver.txt"

timeout /t 5 >nul

echo Starting XASECO controller...
start cmd /k "cd /d %XASECO_PATH% && %SERVER_PATH%\php\php.exe aseco.php TMF"

echo ==============================================
echo Server is now running!
echo Close these windows to stop the server.
echo ==============================================
pause