# chmod +x opus.sh before usage
ffmpeg -i "$1" -c:v libaom-av1 -c:a libopus "${1%.*}.mkv" > /dev/null 2>&1