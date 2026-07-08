# -------------------------------
#                               #
# Korin's Amazing BASHRC        #
#                               #
# -------------------------------
# (Copyleft Korin 1984)

# ------------------------------- Configuration

## Changes some small things based on if we're on a TTY device or not ^w^
export BCONF_TTY=0
export BCONF_IS_KORIN=0

# ------------------------------- Aliases

alias .='cd ..'
alias ..='cd ../..'
alias ...='cd ../../../'
alias cp='cp -v'
alias rm='rm -i'
alias vi='vim'
alias v='vim'
alias c='clear'

alias grep='grep --color=auto'
alias ip='ip --color=auto'

alias ll='ls -la'
alias la='ls -A'
alias l='ls -F'

alias dosbox='~/.local/bin/dosbox'
alias word='wordgrinder'

alias ls='eza --icons --git'
alias tree='eza --icons --git --tree'

alias cat='bat'

alias sl='sl | lolcat -x'

alias calc='bc -q'

# PIPE COPY FOR... well you know. piping.
if [ "$BCONF_TTY" -eq 1 ]; then
    alias pcopy='tmux load-buffer -'
fi

# ------------------------------- Exports

export VISUAL=vim
export EDITOR=$VISUAL
export TERM=linux

# ------------------------------- Path

PATH=$PATH:~/.local/bin
PATH=$PATH:~/.cargo/bin

# ------------------------------- Prompt

# deprecated due to starship
# export PS1='\[\033[1;37m\]$PWD -% \[\033[0m\]'

# ------------------------------- Evals

eval "$(starship init bash)"

# ------------------------------- Functions


extract () {
    if [ -f $1 ]; then
        case $1 in
            *.tar.bz2)      tar -jxvf $1    ;;
            *.tar.gz)       tar -zxvf $1    ;;
            *.bz2)          bunzip2 $1      ;;
            *.gz)           gunzip $1       ;;
            *.tar)          tar -xvf $1     ;;
            *.tbz2)         tar -jxvf $1    ;;
            *.tgz)          tar -zxvf $1    ;;
            *.zip)          unzip $1        ;;
            *.ZIP)          unzip $1        ;;
            *.rar)          unrar x $1      ;;
            *)              echo "Err"      ;;

        esac
    else
        echo "'$1' is not a valid file"
    fi
}

# ------------------------------- Binds

bind '"\C-h": backward-kill-word'


# ------------------------------- Start

## Autostart TMUX only if on laptop.
if [ "$BCONF_TTY" -eq 1 ]; then
    [ -z "$TMUX" ] && exec tmux
fi


echo
echo "Welcome to"
if [ "$BCONF_TTY" -eq 1 ]; then
    figlet -f big Alpine | boxes -d unicornsay | lolcat -x -r -h 0.1 --seed 1107380085
else
    figlet -f big Alpine | boxes -d unicornsay | lolcat -r -h 0.1 --seed 1107380085
fi
echo
echo

## Print out "fortune" with lolcat with horizontal frequency set to a miniscule number so it basically sends it in a single color.
if [ "$BCONF_TTY" -eq 1 ]; then
    fortune -s | boxes -d ansi -p a1l3r3 | lolcat -x -h 0.00001
else
    fortune -s | boxes -d ansi -p a1l3r3 | lolcat -h 0.00001
fi


echo
echo "Today is: $(date --rfc-3339 date)" | boxes -p a1l3r3 -d boxquote
echo

if [ "$BCONF_IS_KORIN" -eq 0 ]; then
    echo "*********************************************************************************************"
    echo
    echo "Looks like you're using '/home/korin/' in starship.toml ^w^"
    echo "Nothing wrong with that!...."
    echo "Just set the BCONF_IS_KORIN export in .bashrc to true"
    echo "plus if you want, just like, modify the starship.toml to feature your pwd. Im too lazy fr"
    echo
    echo "*********************************************************************************************"
fi