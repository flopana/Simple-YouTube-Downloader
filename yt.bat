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


set /p input=Option:
if %input% equ 1(
    set /p link=Youtube Link:
    youtube-dl.exe -x --audio-format mp3 --audio-quality 0 "%link%"
    goto :start
)

if %input% equ 2(
    set /p link=Youtube Link:
    youtube-dl "%link%" 
    goto :start
)else(
    echo "Invalid input!"
    goto :start
)

pause > nul