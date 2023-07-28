ls | egrep \.m4a$ | sed -E "s/^(.+)\.m4a/ffmpeg -i '\1.m4a' -i '\1.jpg' -map 0 -map 1 -c copy -disposition:v:0 attached_pic '\1P.m4a'/" | sh
