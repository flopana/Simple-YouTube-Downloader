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
youtube-dl -x --audio-format mp3 --audio-quality 0 "%link%" -o "%%(title)s.%%(ext)s"
echo.
echo You can enter a new yotube link below:
goto option_1

:option_2
echo.
echo You can enter a new yotube link below:
set /p link=Youtube Link:
youtube-dl "%link%" -o "%%(title)s.%%(ext)s"
goto option_2

pause > nul