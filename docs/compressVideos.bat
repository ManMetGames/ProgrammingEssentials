@echo off
setlocal enabledelayedexpansion
for %%f in (rawVideos\*.mp4) do (
    ffmpeg -i "%%f" "Videos\%%~nxf"
)
endlocal