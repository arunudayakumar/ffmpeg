#!/bin/bash
#echo "Enter the video file name..."
#read vid_name
#vid_in=Pudhupettai.mkv
#vid_in=anjan-song.mp4
vid_in=Kathanayakudu.mkv
#vid_in=santhosh1.mp4
#
#Output
vid_out=$vid_in
vid_out=${vid_out::-4}
vid_out+=_prettypaste.gif
#
ffmpeg -ss 4000 -t 1.0 -i $vid_in -filter_complex "[0:v] palettegen" -y palette.png
ffmpeg -ss 4000 -t 1.0 -i $vid_in -i palette.png -filter_complex "[0:v][1:v] paletteuse" -y $vid_out
