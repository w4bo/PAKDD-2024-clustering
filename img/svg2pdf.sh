#!/bin/bash
set -exo

input_folder="."
output_folder="."

# Create the output folder if it doesn't exist
# mkdir -p "$output_folder"

# Iterate through each PDF file in the input folder
for pdf_file in "$input_folder"/*.pdf; do
    # Extract the file name without extension
    file_name=$(basename -- "$pdf_file")
    file_name_no_ext="${file_name%.*}"
    # Define the output SVG file path
    svg_output_path="$output_folder/$file_name_no_ext.svg"
    # inkscape --export-plain-svg="$svg_output_path" "$pdf_file"
    # inkscape --without-gui --file="$pdf_file" --export-plain-svg=output.svg
    inkscape --without-gui --file="$pdf_file" --export-filename="$svg_output_path"
    echo "Converted: $pdf_file to $svg_output_path"
done

echo "Conversion completed."
