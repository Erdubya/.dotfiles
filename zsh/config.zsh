# initialize completions
autoload -Uz compinit
compinit

# bash completions
autoload bashcompinit
bashcompinit

# environment
export PATH=$PATH:$HOME/scripts

# plugins
source ~/.dotfiles/zsh/git-aliases/git-aliases.zsh
source ~/.dotfiles/zsh/ls/ls.plugin.zsh
source ~/.dotfiles/zsh/zsh-tmux/tmux.plugin.zsh
source ~/.dotfiles/zsh/omz-plugins/history.zsh
source ~/.dotfiles/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# completion plugins
source ~/.dotfiles/zsh/completions/ssh/ssh.plugin.zsh

# enable vim-mode keybinds. ESC to switch
#bindkey -v
#export KEYTIMEOUT=1

# Powerline10K options
POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator dir_writable dir status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vcs virtualenv background_jobs context vi_mode time)

POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

POWERLEVEL9K_VI_INSERT_MODE_STRING="I"
POWERLEVEL9K_VI_COMMAND_MODE_STRING="N"

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="\u227B "

POWERLEVEL9K_ALWAYS_SHOW_CONTEXT=false
DEFAULT_USER=$USER

POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='black'
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='blue'
POWERLEVEL9K_VI_MODE_NORMAL_FOREGROUND='black'
POWERLEVEL9K_VI_MODE_NORMAL_BACKGROUND='red'
POWERLEVEL9K_TIME_FORMAT='%D{%H:%M}'

source ~/.dotfiles/zsh/themes/powerlevel10k/powerlevel10k.zsh-theme

# case insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# aliasing
alias cp='rsync -ahP'

# syntax highlighting (must be at end of file)
source ~/.dotfiles/zsh/history-search-multi-word/history-search-multi-word.plugin.zsh
source ~/.dotfiles/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
