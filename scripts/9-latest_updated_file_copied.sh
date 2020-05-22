latest_file=$(ls -t | head -n 1)
cp -p "$latest_file" /other/directory
