#!/bin/bash
# Produces mp4 movie from series of images (e.g. png format)
# ARG1: name base of image files that is followed by numbers, and prefix.
#       for example if the images are named img0001.png than ARG1 is "img"

ffmpeg  -framerate 12   -y -f image2  -pattern_type glob -i "$1*.png" -preset slow -crf 18  -c:v libx264 -b:v 12000k  -pix_fmt yuv420p  $1.mp4
