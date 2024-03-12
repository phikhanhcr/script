source_folder="/home/khanh/Downloads/nail_course"
destination_folder="/home/khanh/Downloads/nail_course_min"

chmod 777 "$source_folder"
chmod 777 "$destination_folder"

# Use a for loop to iterate over files in the folder
for file in "$source_folder"/*; do
    # Check if the current item is a file (not a directory)
    if [ -f "$file" ]; then
        # Your logic here, for example, print the file name
        echo "Processing file: $file"

        filename=$(basename "$file" .mp4)
        
        # Specify the output file name
        output_filename="${filename}.min.mp4"

        ffmpeg -i "$file" -vf scale=1920:-1 -r 24 -c:v libx264 -preset veryslow -crf 26 "$destination_folder/$output_filename"

        echo "Processing started for: $file"

        wait

        mv "$output_filename" "$destination_folder/"

        echo "Processed and moved: $file -> $destination_folder/$output_filename"
    fi
done
