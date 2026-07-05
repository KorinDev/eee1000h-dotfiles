# ------------------------------- Aliases

alias .='cd ..'
alias cp='cp -v'
alias rm='rm -i'
alias vi='vim'

alias ls='ls --color=auto'
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

alias calc='bc'

# ------------------------------- Exports

export VISUAL=vim
export EDITOR=$VISUAL

# ------------------------------- Path

PATH=$PATH:~/.local/bin

# ------------------------------- Prompt

export PS1='\[\033[1;37m\]$PWD -% \[\033[0m\]'

# ------------------------------- Evals

eval "$(zoxide init bash)"

# ------------------------------- Start

[ -z "$TMUX" ] && exec tmux


echo "Welcome to"
figlet -f lean Alpine Linux | lolcat -x
echo
echo
fortune
echo 
echo
