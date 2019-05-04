# initialize completions
autoload -Uz compinit
compinit

# bash
autoload bashcompinit
bashcompinit

# plugins
source ~/.dotfiles/zsh/themes/powerlevel9k/powerlevel9k.zsh-theme
source ~/.dotfiles/zsh/git-aliases/git-aliases.zsh
source ~/.dotfiles/zsh/ls/ls.plugin.zsh
source ~/.dotfiles/zsh/zsh-tmux/tmux.plugin.zsh
source ~/.dotfiles/zsh/omz-plugins/history.zsh
source ~/.dotfiles/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# completions
source ~/.dotfiles/zsh/completions/ssh/ssh.plugin.zsh

# set path
export PATH=$PATH:$HOME/scripts

# powerline9k
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs virtualenv)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)

DEFAULT_USER=$USER

POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_VI_INSERT_MODE_STRING="I"
POWERLEVEL9K_VI_COMMAND_MODE_STRING="N"

# set keymaps
bindkey -v

# case insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# syntax highlighting at end
source ~/.dotfiles/zsh/history-search-multi-word/history-search-multi-word.plugin.zsh
source ~/.dotfiles/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

# aliasing
alias please='sudo $(fc -nl -1)'
alias cp='rsync -ahP'
