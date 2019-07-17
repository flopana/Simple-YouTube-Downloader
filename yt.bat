@echo off
echo.
echo ###########################
echo # flopana's yt downloader #
echo ###########################
echo.

set /p input=Youtube Link:
youtube-dl.exe -x --audio-format mp3 --audio-quality 0 "%input%"

pause