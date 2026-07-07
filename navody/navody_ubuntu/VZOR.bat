@echo off

set a="00:00:49.000"
set b="00:00:53.500"

set file="TRIM_20170828_205517.mp4"

set f="yes"

set m="yes"

set sp="0.33"

mpv.exe --fullscreen=%f% --mute=%m% --ss=%a% --speed=%sp% --ab-loop-a=%a% --ab-loop-b=%b% %file%

