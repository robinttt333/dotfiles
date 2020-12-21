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
## Starting tmux session on startup
#if [[ -n $VIRTUAL_ENV && -e "${VIRTUAL_ENV}/bin/activate" ]]; then
  #source "${VIRTUAL_ENV}/bin/activate"
#fi
#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"
#if command -v pyenv 1>/dev/null 2>&1; then
  #eval "$(pyenv init -)"
#fi
#TranslateWheelToCursor=on
#DisableWheelToCursorByCtrl=on
#bindkey -s jk '\e'
# Set Spaceship ZSH as a prompt

# Automatically start x-server
if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi
source /home/lazy/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
neofetch
export KEYTIMEOUT=1
alias config='/usr/bin/git --git-dir=/home/lazy/.cfg/ --work-tree=/home/lazy'
