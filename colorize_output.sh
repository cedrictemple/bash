TEXT_GREEN="32"
TEXT_RED="31"
TEXT_BLUE="34"
TEXT_YELLOW="93"
TEXT_WHITE="37"
TEXT_BLACK="30"
TEXT_BOLD="1"
TEXT_UNDERLINE="4"
TEXT_BLINK="5"
TEXT_REVERSE="7" # inverse background and text color
TEXT_HIDDEN="8" # very useful for secrets/passwords
TEXT_RESET="0"

echo_with_colors(){
    local text=$1
    local color=$2
    local no_trailing_newline=0
    if [ $# -eq 3 ]
    then
        no_trailing_newline=1
    fi
    if [ ${no_trailing_newline} -eq 0 ]
    then
        echo -e "\e[${color}m${text}\e[${TEXT_RESET}m"
    else
        echo -n -e "\e[${color}m${text}\e[${TEXT_RESET}m"
    fi
}

