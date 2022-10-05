GT_RESET=$(   tput sgr0)  # Reset all attributes
GT_BRIGHT=$(  tput bold)  # Set “bright” attribute
GT_DIM=$(     tput dim)   # Set “dim” attribute (normal/non-bright)
GT_ULINE=$(   tput smul)  # Set “underscore” (underlined text) attribute
GT_BLINK=$(   tput blink) # Set “blink” attribute
GT_INVERSE=$( tput rev)   # Set “inverse” attribute
GT_HIDDEN=$(  tput invis) # Set “hidden” attribute

FG_BLACK=$(   tput setaf 0) #foreground to color #0 - black
FG_RED=$(     tput setaf 1) #foreground to color #1 - red
FG_GREEN=$(   tput setaf 2) #foreground to color #2 - green
FG_YELLOW=$(  tput setaf 3) #foreground to color #3 - yellow
FG_BLUE=$(    tput setaf 4) #foreground to color #4 - blue
FG_MAGENTA=$( tput setaf 5) #foreground to color #5 - magenta
FG_CYAN=$(    tput setaf 6) #foreground to color #6 - cyan
FG_WHITE=$(   tput setaf 7) #foreground to color #7 - white

BG_BLACK=$(   tput setab 0) #background to color #0 - black
BG_RED=$(     tput setab 1) #background to color #1 - red
BG_GREEN=$(   tput setab 2) #background to color #2 - green
BG_YELLOW=$(  tput setab 3) #background to color #3 - yellow
BG_BLUE=$(    tput setab 4) #background to color #4 - blue
BG_MAGENTA=$( tput setab 5) #background to color #5 - magenta
BG_CYAN=$(    tput setab 6) #background to color #6 - cyan
BG_WHITE=$(   tput setab 7) #background to color #7 - white
