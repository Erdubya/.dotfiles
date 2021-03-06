# .dotfiles
Contains a selection of configuration files used across my systems.

### Installation
Clone the repository to any directory. Use [dotbot](https://github.com/anishathalye/dotbot) to install by running "./install" after cloning. This will create symlinks in the home directory for each of the config files and download any necessary plugins. Dotbot will display any errors in the output messages.

#### Fonts
I've included the fonts I use in my themes. They are based on [Hack](https://sourcefoundry.org/hack/) and custom patched using [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts).

Included Configurations
-----------------------

### vimrc
Vim configuration.  Requires [vim-plug](https://github.com/junegunn/vim-plug) as a package manager; it will be automatically installed on first run. Uses a powerline theme.

Tweaks:
 - Activate mouse, number lines, and hidden buffers
 - Sets the GUI font and CLI/GUI theme
 - Sets tabstop and expands tabs
 - Enables syntax

Plugins:
 - [vim-obsession](https://github.com/tpope/vim-obsession)
 - [ctrlp](https://github.com/ctrlpvim/ctrlp.vim)
 - [nerdtree](https://github.com/scrooloose/nerdtree)
 - [delimitMate](https://github.com/raimondi/delimitmate)
 - [vim-airline](https://github.com/vim-airline/vim-airline)
 - [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)
 - [vim-colorschemes](https://github.com/flazz/vim-colorschemes)
 - [vim-monokai](https://github.com/crusoexia/vim-monokai)
 - [L9](https://github.com/vim-scripts/L9)
 - [syntastic](https://github.com/vim-syntastic/syntastic)
 - [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)
 - [vim-dirdiff](https://github.com/will133/vim-dirdiff)

### zshrc
Configuration for the ZSH shell. Uses Git submodules to download and install plugins to avoid framework overhead. Includes a powerline theme and is configured for the included font. Uses a custom file as a symlink to allow for local editing and adjustment of some options.

Tweaks:
 - Autostart Tmux
 - Use rsync for local copies
 - Autoload zsh+bash completions
 - Use PowerLevel10K 2-line prompt

Plugins:
 - [git-aliases](https://github.com/mdumitru/git-aliases)
 - [ls](https://github.com/zpm-zsh/ls)
 - [zsh-tmux](https://github.com/sharktamer/zsh-tmux)
 - [history](https://github.com/robbyrussell/oh-my-zsh/blob/master/lib/history.zsh)
 - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
 - [powerlevel10k](https://github.com/romkatv/powerlevel10k)
 - [ssh](https://github.com/zpm-zsh/ssh)
 - [history-search-multi-word](https://github.com/zdharma/history-search-multi-word)
 - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

### tmux.conf
Configuration for Tmux. Updates a few key areas like keybindings for better vim integration.  Uses a powerline theme.

Tweaks: 
 - Default terminal "screen-256color"
 - Remapped prefix key and pane splits
 - Reindexed windows for easy switching
 - Use smart vim pane switching from [christoomey/vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)

### Simple (Suckless) Terminal
Some simple config.h files for st.  Selects the correct font and provides a few different options for colour.  Manually install by copying to st source directory and recompiling.
