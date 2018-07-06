ZSH_THEME="spaceship"
POWERLEVEL9K_MODE='nerdfont-complete'
# ZSH_THEME="powerlevel9k/powerlevel9k"

# Powerlevel9k settings
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status battery)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="╭─"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="╰─$ "
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="\u256D\u2500"
# POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="\u2570\uf460 "
# POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="╰\uF460\uF460\uF460 "

POWERLEVEL9K_OS_ICON_BACKGROUND='clear'
# POWERLEVEL9K_OS_ICON_FOREGROUND='black'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='clear'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='204'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='clear'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='204'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='clear'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='39'
POWERLEVEL9K_DIR_HOME_BACKGROUND='clear'
POWERLEVEL9K_DIR_HOME_FOREGROUND='39'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='clear'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='39'
POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND='clear'
POWERLEVEL9K_BATTERY_LOW_BACKGROUND='clear'
POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND='clear'
POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND='clear'
POWERLEVEL9K_STATUS_OK_BACKGROUND='clear'
POWERLEVEL9K_STATUS_ERROR_BACKGROUND='clear'
# POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=''
# POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=''
# POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=''
# POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=''

# Spaceship prompt settings
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_PREFIX=""
SPACESHIP_CHAR_SYMBOL="→"
SPACESHIP_CHAR_SUFFIX=" "

SPACESHIP_HOST_PREFIX="@"
SPACESHIP_DIR_PREFIX=""

SPACESHIP_PROMPT_ORDER=(
user
host
dir
git
jobs
line_sep
char
)

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt autocd beep extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/kaprijela/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias aisa="ssh xkandova@aisa.fi.muni.cz"
alias anxur="ssh xkandova@anxur.fi.muni.cz"
alias akis="ssh xkandova@akis.fi.muni.cz"
alias prognotes="cd /windows/_books/Programming\ Notes\ For\ Professionals"
alias kopen="kde-open5"
alias mjuni="cd /windows/_CLOUD/Disk\ Google/MUNI/Studijní\ materiály/2018-4-jar"
# alias net="sudo systemctl restart NetworkManager.service"
alias supdate="sudo apt update && sudo apt upgrade"
alias shit="shutdown now"
alias shrit="shutdown -r now"
alias scrclean="mv ./Screenshot* ~/Pictures/."
alias emulator="~/Install/android-sdk/emulator/emulator"
