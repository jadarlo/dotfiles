
# Commands to run in login sessions can go here
if status is-login

colortty.sh
Hyprland

end

# ||--||-- ||--||--||--||--||--||--||--||--||--||-- #

# Commands to run in interactive sessions can go here
if status is-interactive

# fastfetch -c paleofetch
fastfetch
set -g fish_greeting
zoxide init --cmd cd fish | source
	
end

# ||--||-- ||--||--||--||--||--||--||--||--||--||-- #


#if [ "$TERM" = "linux" ];

#colortty.sh

#end

# ||--||-- ||--||--||--||--||--||--||--||--||--||-- #

# Created by `pipx` on 2024-09-12 13:47:04
set PATH $PATH /home/jadarlo/.local/bin
