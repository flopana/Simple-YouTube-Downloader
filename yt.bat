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
echo 2. Download video as mp4.
echo.

set /p test=Option:
echo %test%
IF %test% EQU 1 goto option_1


IF %test% EQU 2 goto option_2

:option_1
set /p link=Youtube Link:
youtube-dl.exe -x --audio-format mp3 --audio-quality 0 "%link%"
goto start

:option_2
set /p link=Youtube Link:
youtube-dl "%link%" 
goto start

pause > nul