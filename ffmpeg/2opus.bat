@echo off
ffmpeg -i "%~1" -c:a libopus "%~dpn1.opus" > nul 2>&1
