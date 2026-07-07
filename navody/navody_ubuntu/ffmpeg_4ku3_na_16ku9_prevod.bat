REM funguje ve WINDOWS
REM prevod 4:3 na 19:9 a cerne okraje, htaje na setup boxu


blbne nejde na TV
ffmpeg -i in.mp4 -vf "scale=1440:1080,pad=1920:1080:(1920-1440)/2:0:black" -c:a copy 1.mp4 -y


ffmpeg -i in.mp4 -vf "pad=ih*16/9:ih:(ow-iw)/2:(oh-ih)/2" -c:a copy 2.mp4 -y
ffmpeg -stream_loop 10 -i 2.mp4 -c:a copy 2-10x.mp4 -y

ffmpeg -i houp.mp4 -vf "pad=ih*16/9:ih:(ow-iw)/2:(oh-ih)/2" -c:a copy 3.mp4 -y
ffmpeg -stream_loop 10 -i 3.mp4 -c:a copy 3-10x.mp4 -y

ffmpeg -stream_loop 10 -i 4.mp4 -c:a copy 4-10x.mp4 -y
ffmpeg -stream_loop 30 -i 4.mp4 -c:a copy 4-30x.mp4 -y


ffmpeg -i ukazala_houp_sem-tam.mp4 -vf "scale=1440:1080,pad=1920:1080:(1920-1440)/2:0:black" -c:a copy 5.mp4
ffmpeg -stream_loop 10 -i 5.mp4 -c:a copy 5-10x.mp4


ffmpeg -i ukazala_houp_sem-tam.mp4.mp4 -vf "pad=ih*16/9:ih:(ow-iw)/2:(oh-ih)/2" -c:a copy 6.mp4 -y
ffmpeg -stream_loop 10 -i 6.mp4 -c:a copy 6-10x.mp4 -y

pause
REM --------------- zde toto pouzivat
ffmpeg -i in.mp4 -vf "pad=ih*16/9:ih:(ow-iw)/2:(oh-ih)/2" -c:a copy out.mp4 -y