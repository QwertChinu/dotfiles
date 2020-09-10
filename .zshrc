# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/chinu/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
#ZSH_THEME="jonathan"
#ZSH_THEME="random"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "jonathan" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x dwm >/dev/null && exec startx 

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

alias v="nvim"
alias gbin="cd ~/.local/bin/"
alias gdwm="cd ~/Downloads/Programs/myconfig/dwm/"
alias p="sudo pacman"
alias upkg="sudo /usr/bin/pacman -Syyy && status"
alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias py="python"
alias gs="git status"
alias g="git"
alias vrc="nvim ~/.config/nvim/init.vim"
alias ytc="youtube-dl --rm-cache-dir"
alias gv="cd ~/Downloads/Video/"
alias bkm="nvim ~/.config/qutebrowser/bookmarks/urls"
alias brc="nvim ~/.bashrc"
alias tp="ping 8.8.8.8"
alias bg="setbg ~/Downloads/Pictures"
alias cs="curl -s https://corona-stats.online/?source=2 > ~/.cache/corona && grep 'World\|India' ~/.cache/corona"
alias csn="/usr/bin/curl https://corona-stats.online?top=10"
alias SS="sudo systemctl"
alias rw="sudo systemctl restart NetworkManager"
alias yt="youtube-dl --add-metadata -i -o '%(upload_date)s-%(title)s.%(ext)s'"
alias yta="yt -x -f bestaudio/best"
alias upd="psync && p -Qqe > ~/.local/bin/pkg && cfg commit -am 'Arch System update' && cfg push && sudo timeshift-gtk && yay -Syu"
#alias upd=". ~/.local/bin/backup_dot && sudo timeshift-gtk && yay -Syu"
alias bkp="sudo timeshift-gtk"
alias tsmm="watch -n 10 transmission-remote -l"
alias tsm="transmission-remote"
alias tsmd="transmission-daemon --download-dir $HOME/Downloads/Video"
alias tsmr="transmission-remote -l | grep 100\% | grep Done | awk '{print $1}' | xargs -n 1 -I \% /usr/bin/transmission-remote -t \% -r"
alias updm='sudo reflector --verbose -n 20 -p https --sort rate --save /etc/pacman.d/mirrorlist'
alias dpkg='sudo /usr/bin/pacman -Syyuw --noconfirm'
alias fboot='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias pboot='echo "sudo dd bs=4M if=path-to-the-ISO of=/dev/sdX status=progress && sync"'
alias play='mpv ~/Downloads/Video/Patent_Medicine.mkv'
#alias ls='ls --color=auto'
alias zrc="v ~/.zshrc"
alias fm="xset s off && xset -dpms"
alias nfm="xset s on && xset +dpms"
alias bt="cat ~/.local/bin/boat"
alias pm="mpv --no-video"
alias cssh="ssh 'chinu@192.168.1.104'"
alias psync="sudo rsync -aAXv chinu@192.168.1.104:/var/cache/pacman/pkg/ /var/cache/pacman/pkg"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/chinu/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/chinu/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/chinu/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/chinu/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

alias play="mpv https://www.youtube.com/watch\?v\=p0wEe5GEHuk"
