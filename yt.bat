@echo off
echo.
echo ###########################
echo # flopana's yt downloader #
echo ###########################
echo.
echo.
echo 1. Download video and convert it to mp3.
echo 2. Download video as mp4.


set /p input=Youtube Link:
youtube-dl.exe -x --audio-format mp3 --audio-quality 0 "%input%"

pause