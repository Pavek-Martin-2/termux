# Command history tweaks:
# - Append history instead of overwriting
#   when shell exits.
# - When using history substitution, do not
#   exec command immediately.
# - Do not save to history commands starting
#   with space.
# - Do not save duplicated commands.
shopt -s histappend
shopt -s histverify
export HISTCONTROL=ignoreboth
FCEDIT=nano
umask 0077 default
#umask 0022 all r
# Default command line prompt.
PROMPT_DIRTRIM=2
#PS1='\[\e[0;32m\]\w\[\e[0m\] \[\e[0;97m\]\$\[\e[0m\] '
PS1='\[\e[0;32m\]\w\[\e[0m\] \[\e[0;97m\]\$\[\e[0m\] '
rm -rf ~/storage/downloads/Nearby\ Share/
# Handles nonexistent commands.
# If user has entered command which invokes non-available
# utility, command-not-found will give a package suggestions.
if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
	command_not_found_handle() {
		/data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
	}
fi
termux-wake-lock
clear
alias c="clear"
alias p="pwd"
alias e="termux-wake-unlock;exit"
alias n="nano"
alias d="cd ~/storage/downloads/"
alias sd="cd ~/storage/external-1/"
alias j="jobs -l"
alias du="du -s -h */"
alias t="tree storage/external-1/youtube_videa/ | grep '.mp4.part'"
alias td="find storage/external-1/youtube_videa/ -name '*.mp4.part' -exec rm {} \;"
alias df="df -h"
alias l="ls"
alias lh="ls -lh"
alias ld="ls -lhd"
alias la="ls -lham"
alias lt="ls -lht"
alias lf="ls --full-time"
alias lft="ls --full-time -t"
alias 1="cd .."
alias 2="cd ../../"
alias cal="cal -m -v"
alias m="free --mega -h"
alias pt="pstree -p;ps -ef"
alias eall="nano ~/../usr/bin/all;cp -v ~/../usr/bin/all ~/storage/external-1/zaloha/"
alias all2="all;all"
alias xall="cat  ~/../usr/bin/all"
alias 664="chmod 664"
alias 30="sleep 30m"
alias 60="sleep 60m"
alias 90="sleep 90m"
alias 120="sleep 120m"
alias edvd="cp -v ~/../usr/bin/dvd ~/storage/external-1/zaloha/dvd_old;nano ~/../usr/bin/dvd;cp -v ~/../usr/bin/dvd ~/storage/external-1/zaloha/dvd"
alias xdvd="clear;hodiny;dvd | wc -l"
alias rf="rm -rf"
alias X="chmod +x"
alias x="chmod -x"
alias a="cd ~/storage/external-1/zaloha/archivy/"
alias cl="clear;ls"
alias w="cd ~/work"
alias ly="ls -lh  ~/storage/external-1/youtube_videa/"
alias yp="yt-dlp --no-colors -c -nc -f 'worst[ext=mp4]' "
alias ypb="yt-dlp --no-colors -c -nc -f 'best[ext=mp4]' "
alias einst="nano ~/../usr/bin/inst;cp -v ~/../usr/bin/inst ~/work/inst"
alias crpl="ls *.mp3 > playlist; cat playlist"
alias pl="cat playlist; mpv --playlist=playlist"
alias mp3="cd ~/storage/external-1/zaloha/mp3"
alias te="cd ~/work/text2jpg/;./text2jpg_termux_vyceradkovy.sh"
alias tz="unzip -t "
alias tr="unrar t "
alias y18='yt-dlp --no-colors -c -nc -f 18 -o ~/storage/external-1/youtube_videa/"%(title)s.%(ext)s" '
alias y22='yt-dlp --no-colors -c -nc -f 22 -o ~/storage/external-1/youtube_videa/"%(title)s.%(ext)s" '
alias mute="ffmpeg -i in.mp4 -c:v copy -an mute.mp4 -y"
alias 512="ffmpeg -i in.mp4 -af "volume=2.0" -c:v copy out.mp4 -y"
alias 1024="ffmpeg -i in.mp4 -af "volume=4.0" -c:v copy out.mp4 -y"
alias 2048="ffmpeg -i in.mp4 -af "volume=8.0" -c:v copy out.mp4 -y"

