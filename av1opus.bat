@echo off
ffmpeg -i "%~1" -c:v libaom-av1 -c:a libopus "%~dpn1.mkv" > nul 2>&1