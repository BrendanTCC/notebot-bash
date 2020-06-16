#!/bin/sh
file="${0##*/}"
ed=nano
string=/home/$USER/.note
echo "" > $string
open_time=120
time_mins=$((open_time / 60))
NOTEBOT_VER="0.2020.6.16"
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
echo ""
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
echo "as for when this file will close: it'll close after $time_mins minutes ($open_time seconds)."
sleep "$open_time"
clear
