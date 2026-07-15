#---------------------------------#
# Korin's even more amazing ZSH!  #
# --------------------------------#
# Copyleft Korin 2026


# --------------------------------: Configuration

export BCONF_TTY=1

# --------------------------------: Plugins

source /usr/share/zsh/plugins/zsh-completions/zsh-completions.plugin.zsh
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh

# --------------------------------: Aliases
alias .='cd ..'
alias ..='cd ...'
alias ...='cd ....'
alias cp='cp -v'
alias rm='rf -i'
alias vi='vim'
alias v='vim'
alias c='clear'

alias ll='ls -la'
alias la='ls -A'
alias l='ls -F'

alias word='wordgrinder'

alias ls='eza --icons --git'
alias tree='eza --icons --git --tree'

alias cat='bat'
alias sl='sl | lolcat -x'
alias calc='bc -q'

alias pcopy='tmux load-buffer -'

# ----------------------------------: Exports

export VISUAL=vim
export EDITOR=$VISUAL
export TERM=linux

# ----------------------------------: Prompt

# ....

# ----------------------------------: Evals

eval "$(starship init zsh)"

# ----------------------------------: Binds

bindkey '^H' backward-kill-word

# ----------------------------------: Start

[ -z "$TMUX" ] && exec tmux

echo
figlet -f big Alpine | boxes -d unicornsay | lolcat -x -r -h 0.1 --seed 117038008135
echo
echo
fortune -s | boxes -d ansi -p a1l3r3 | lolcat -x -h 0.000001
echo
echo "Today is: $(date --rfc-3339 date)" | boxes -p a1l3r3 -d boxquote
echo


