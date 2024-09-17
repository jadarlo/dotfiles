function listest -d "List all packages installed with pacman and/or any AUR helpers by date (with latest starting from the bottom)"
    expac --timefmt='%Y-%m-%d %T' '%l\t%n' | sort -n
end
