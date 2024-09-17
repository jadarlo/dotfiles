function unused
#    swww img --transition-type random --transition-step 45 $argv
    swww img --transition-type wipe --transition-angle 10 --transition-step 75 --transition-duration 1 $argv
    killall waybar 1>/dev/null 2>&1
    sleep 1 1>/dev/null 2>&1
    wallust run $argv 1>/dev/null 2>&1
    pywalfox update 1>/dev/null 2>&1
    launchwaybar.sh 1>/dev/null 2>&1
    python /home/jadarlo/scripts/cava_colors.py /home/jadarlo/.config/cava/colors /home/jadarlo/.config/cava/config 88 1>/dev/null 2>&1
end
