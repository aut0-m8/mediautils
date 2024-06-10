@echo off
ffmpeg -i "%~1" -c:v libsvtav1 -c:a libopus "%~dpn1.mkv"
