# albuM4Art

A tiny bash script to iterate through the current directory and attach album art (a.k.a., cover art) to `.m4a` audio files. <br/>
It requires [`ffmpeg`](https://github.com/FFmpeg/FFmpeg) to do the actual merging but makes handling large amounts of audio files easy. <br/>
The name of the audio file and the art file should be the same as it reads `<name>.m4a` and `<name>.jpg` by default. However, the rule for the extension and the file name can be changed easily by editing `albuM4Art.sh` without pain. <br/>

## Compatibility

Since this script uses the `sed` tool to do REGEX matchings, and since the fact that there are two favors while this script is intended to run on MacOS, therefore if it gives:
```
sed: illegal option -- E
```
error, simply change the `-E` to `-r`.

## Shortcut

For temporary uses, simply copy this into your shell:
```shell
ls | egrep \.m4a$ | sed -E "s/^(.+)\.m4a/ffmpeg -i '\1.m4a' -i '\1.jpg' -map 0 -map 1 -c copy -disposition:v:0 attached_pic '\1P.m4a'/" | sh
```
