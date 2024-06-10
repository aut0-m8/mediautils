# chmod +x opus.sh before usage
ffmpeg -i "$1" -c:a libopus "${1%.*}.opus" > /dev/null 2>&1
