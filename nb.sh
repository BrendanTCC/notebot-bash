#!/bin/sh
file="${0##*/}"
ed=nano
string=/home/$USER/.note
echo "" > $string
dot_speed=666
NOTEBOT_VER="0.15.6.2020b"
figlet -f slant "notebot for bash"
echo "v$NOTEBOT_VER"
echo ""
echo "a project by Brendan Webb."
echo "($ed is set as your editor. Change this by opening '$file' in your favourite editor.)"
sleep 5
clear
echo "Hello, $USER!"
echo "i'm gonna start up $ed for you. chuck what you want it to say in there, and then exit. Be sure to save it."
sleep 2
$ed $string
clear
echo "getting ready..."
sleep 2
clear
echo "starting in 3"
sleep 1
clear
echo "starting in 2"
sleep 1
clear
echo "starting in 1"
sleep 1
clear
echo "Hello! $USER told me to tell you the following:"
cat $string
sleep 1
echo ""
echo "hold down [ctrl] and press [c] to quit."
sleep 2
echo ""
echo ""
echo ""
echo ""
echo "(by the way, $USER: this file is also available at $string)"
echo "(this file will automatically be cleared the next time this script is started, to, y'know, make room for a new note.)"
sleep "$dot_speed"
clear

eof
