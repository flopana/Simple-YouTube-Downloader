@echo off
Title flopana's yt downloader
:start

echo.
echo ###########################
echo # flopana's yt downloader #
echo ###########################
echo.
echo.
echo 1. Download video and convert it to mp3.
echo 2. Download video.
echo 3. Close.
echo.

set /p input=Option:

IF %input% EQU 1 goto option_1

IF %input% EQU 2 goto option_2

IF %input% EQU 3 exit

goto start

:option_1
set /p link=Youtube Link:
youtube-dl.exe -x --audio-format mp3 --audio-quality 0 "%link%"
goto start

:option_2
set /p link=Youtube Link:
youtube-dl "%link%" 
goto start

pause > nul