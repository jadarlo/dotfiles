function wall

# ------------------- #
# -- SET WALLPAPER -- #
# ------------------- #

#    swww img --transition-type random --transition-step 45 $argv
     swww img --transition-type wipe --transition-angle 10 --transition-step 75 --transition-duration 1 $argv 1>/dev/null 2>&1
	echo "|     [ -- switching wallpaper -- ]     |"

# -------------------- #
# -- KILLALL WAYBAR -- #
# -------------------- #

    killall waybar 1>/dev/null 2>&1
#	echo "killed all running waybar instances"

# ----------- #
# -- SLEEP -- #
# ----------- #

    sleep 1 

# -------------------- #
# -- GET PYWAL COLS -- #
# -------------------- #
	
    wal -nqi $argv --cols16

# -------------- #
# -- UPDT TTY -- #
# -------------- #

    cp ~/.cache/wal/colors-tty.sh ~/scripts/colortty.sh 1>/dev/null 2>&1
	echo "|   [ -- changed terminal colors! -- ]  |"	

# ------------------- #
# -- UPDT PYWALFOX -- #
# ------------------- #

    pywalfox update 1>/dev/null 2>&1
	echo "  [ -- updated librefox colors! -- ]"

# ------------------- #
# -- LAUNCH WAYBAR -- #
# ------------------- #

    launchwaybar.sh 1>/dev/null 2>&1
	echo "   [ -- updated waybar colors! -- ]"

# -------------------- #
# -- UPDT CAVA COLS -- #
# -------------------- #

    python ~/scripts/cava_colors.py ~/.cache/wal/colors-cava.conf ~/.config/cava/config 88 1>/dev/null 2>&1
	echo "    [ -- updated cava colors! -- ]  "
end
