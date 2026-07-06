# ------------------------------- Aliases

alias .='cd ..'
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

alias ls='exa --icons --git'
alias tree='exa --icons --git --tree'

alias cat='bat'

alias sl='sl | lolcat -x'

alias calc='bc -q'

# ------------------------------- Exports

export VISUAL=vim
export EDITOR=$VISUAL

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

# ------------------------------- Start

[ -z "$TMUX" ] && exec tmux


echo "Welcome to"
figlet -f lean Alpine | boxes | lolcat -x
echo
echo
fortune
echo 
echo
