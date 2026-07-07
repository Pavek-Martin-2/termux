@echo off

set file="ladydianka.mp4"

set f="yes"
REM set f="no"

set m="yes"
REM set m="no"


set sp="0.25"

mpv.exe --fullscreen=%f% --mute=%m% --speed=%sp% --loop %file%


