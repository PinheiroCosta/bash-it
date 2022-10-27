# shellcheck shell=bash
about-alias "User's custom aliases"

# ls
alias lh='ls -d .[^.]*'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# mkdir
alias mkdir='mkdir -pv'       # create parent directories by default

# rm
alias rm='rm -v'        # always verbose

# find
alias findf='find . -type f -iname'       # find files in CWD recursive
alias findd='find . -type d -iname'       # find directories in CWD recursive


# Clipboard
if [ -f /usr/bin/xclip ]; then
    alias xcopy='xclip -selection clipboard'
    alias xpaste='xclip -selection clipboard -o'
fi

# netstat
if [ -f /usr/bin/netstat ]; then
    alias ports='netstat -tulanp'       # show open ports
fi

# curl
alias header='curl -I'        # get web server headers

# Grep with colors
alias grep='grep --color=auto'

# open files in GUI
if [ -f /usr/bin/xdg-open ];then
    alias open="xdg-open"
fi

# today's date in format %WEEK %DAY %MONTH %YEAR
alias hoje='printf "%s %s %s %s %s %s" $(date +"%A, %d de %B de %Y")'

# current time 
alias horario='printf "%s" $(date +"%T")'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -x /usr/bin/dircolors && eval "$(dircolors -b)"
    alias ls='ls --color=auto --group-directories-first'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'


# Call a game with MangoHud enabled
if [ -f /usr/bin/mangohud ];then
    alias mango='MANGOHUD_CONFIG="cpu_temp,gpu_temp,font_scale=0.7" mangohud --dlsym wine'
fi
