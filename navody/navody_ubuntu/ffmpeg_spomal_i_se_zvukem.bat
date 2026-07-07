ffmpeg -i in.mp4 -filter:v "setpts=2.0*PTS" -filter:a "atempo=0.5" polovina.mp4
ffmpeg -i polovina.mp4 -filter:v "setpts=2.0*PTS" -filter:a "atempo=0.5" ctvrtina.mp4
ffmpeg -i ctvrtina.mp4 -filter:v "setpts=2.0*PTS" -filter:a "atempo=0.5" osmina.mp4
ffmpeg -i osmina.mp4 -filter:v "setpts=2.0*PTS" -filter:a "atempo=0.5" sestnactina.mp4


