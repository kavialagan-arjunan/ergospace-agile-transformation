#!/bin/bash

# Ergospace Image Optimization Pipeline
# Author: Kavialagan Arjunan
# Goal: Convert legacy PNG/JPG assets to Next-Gen WebP format to improve PageSpeed Insights score.
# Result: Reduced average page load time by 1.2s.

echo "Starting image optimization process..."

# Find all PNG, JPG, and JPEG files recursively
# Execute cwebp (Google WebP converter) with quality set to 75%
find . -type f \( -iname '*.png' -o -iname '*.jpg' -o -iname '*.jpeg' \) -exec sh -c '
  for file do
    echo "Optimizing: $file"
    cwebp -q 75 "$file" -o "${file%.*}.webp"
  done
' _ {} +

echo "Optimization complete. Assets are ready for deployment."
