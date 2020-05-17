alias v="nvim"
alias gbin="cd ~/.local/bin/"
alias gdwm="cd ~/Downloads/Programs/myconfig/dwm/"
alias p="sudo pacman"
alias upkg="sudo /usr/bin/pacman -Syyy && reset_status"
alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias py="python"
alias rs="bash reset_status"
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
alias csn="curl https://corona-stats.online?top=10"
alias bright="sudo bash bright"
alias SS="sudo systemctl"
alias rw="sudo systemctl restart NetworkManager"
alias yt="youtube-dl --add-metadata -i -o '%(upload_date)s-%(title)s.%(ext)s'"
alias yta="yt -x -f bestaudio/best"
alias upd="p -Qqe > ~/.local/bin/pkg && cfg commit -am 'Arch System update' && cfg push && sudo timeshift-gtk && yay -Syu"
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

git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="[\u@\h \W]\$(git_branch)\$ "

set -o vi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '

[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x dwm >/dev/null && exec startx 


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/chinu/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
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

