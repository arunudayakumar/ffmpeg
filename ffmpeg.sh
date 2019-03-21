#!/bin/bash
#echo "Enter the video file name..."
#read vid_name
#vid_name=Pudhupettai.mkv
#vid_name=anjan-song.mp4
vid_name=Kathanayakudu.mkv
#vid_name=santhosh1.mp4
ffmpeg -ss 4000 -t 1.0 -i $vid_name -filter_complex "[0:v] palettegen" -y palette.png
ffmpeg -ss 4000 -t 1.0 -i $vid_name -i palette.png -filter_complex "[0:v][1:v] paletteuse" -y prettyStickAround.gif
