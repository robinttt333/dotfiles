export ZSH="/home/lazy/.oh-my-zsh"

#ZSH_THEME="common"
ZSH_THEME="spaceship"

# Theme specific settings
SPACESHIP_PROMPT_ORDER=(user dir git vi_mode char)
SPACESHIP_RPROMPT_ORDER=(venv conda pyenv battery)
SPACESHIP_TIME_SHOW=true
SPACESHIP_TIME_12HR=true
SPACESHIP_TIME_FORMAT=%@
SPACESHIP_USER_SHOW=always
SPACESHIP_USER_COLOR=blue
SPACESHIP_VENV_SYMBOL="🐍 "
SPACESHIP_VENV_COLOR=green
SPACESHIP_BATTERY_SHOW=always
SPACESHIP_PROMPT_SEPARATE_LINE=true
SPACESHIP_EXEC_TIME_COLOR=purple
ZSH_THEME="spaceship"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=yellow"

# Plugins
plugins=(npx npm branch debian django git python node pip redis-cli celery safe-paste themes tmux virtualenv vi-mode zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8

alias jk='make test'

# Automatically start x-server
if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi
source /home/lazy/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
neofetch --w3m ~/applicationNumber.png
export KEYTIMEOUT=1
alias config='/usr/bin/git --git-dir=/home/lazy/.cfg/ --work-tree=/home/lazy'
export BAT_THEME="Dracula"

