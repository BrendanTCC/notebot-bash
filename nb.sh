#!/bin/bash
EDITOR=${EDITOR:-nano}
file="${0##*/}"
string=/home/$USER/.note
echo "" > $string
open_time=120
time_mins=$((open_time / 60))
clear
NOTEBOT_VER="0.2020.6.26"
cat logo
echo "v$NOTEBOT_VER"
echo ""
echo "a project by Brendan Webb."
echo "(script keep-alive time is set to $time_mins minutes.\nyou can change the keep-alive time (in seconds) by changing the \$open_time variable.)"
sleep 2
clear
echo "Hello, $USER!"
echo "i'm gonna start up $EDITOR for you. chuck what you want it to say in there, and then exit. Be sure to save it."
sleep 2
$EDITOR $string
clear
echo "Hello! $USER told me to tell you the following:"
echo ""
echo "----[NOTE BLOCK START]----"
cat $string
echo "-----[NOTE BLOCK END]-----"
sleep 1
echo ""
echo "hold down [ctrl] and press [c] to quit."
echo ""
echo ""
echo ""
echo ""
echo "(by the way, $USER: this file is also available at $string)"
echo "(this file will automatically be cleared the next time this script is started, to, y'know, make room for a new note.)"
echo "as for when this script will terminate: it'll clear the screen and close after $time_mins minutes ($open_time seconds)."
sleep "$open_time"
clear
