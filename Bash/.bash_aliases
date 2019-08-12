alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias android="sh /opt/android-studio/bin/studio.sh"
alias pingg="ping www.google.com -c 3"
alias py3="python3"
alias p3="pip3 install --user"
alias sp="sudo pacman -S"
alias ki="killall -2"
alias km="killall -15"
alias kf="killall -9"
alias .="cd .."
alias ..="cd ../.."
alias ...="cd ../../.."
alias xc="xclip -selection clipboard"
alias lz="ls -lSh"
alias v="vim"
alias plz='sudo $(history -p \!\!)'
alias runelite="java -jar ~/Downloads/runelite/Runelite-1.6.1.jar --mode=OFF"
alias kt="/usr/lib/kdeconnectd"
alias vbc="vim ~/.bashrc"
alias vvc="vim ~/.vimrc"
alias vbp="vim ~/.bash_profile"
alias spyu="sudo pacman -Syu --noconfirm"
alias fz="killall -STOP"
alias cn="killall -CONT"
alias vas="vim ~/.bash_aliases"
alias vtc="vim ~/.tmux.conf"
alias i3c="vim ~/.config/i3/config"
alias cy3="python3 setup.py build_ext --inplace"
alias kpy3="killall python3"
alias kcd="kdeconnect-cli -d 11a416c43eab4711 --share"
alias iv="xcalib -invert -alter"
alias sn="shutdown now"
pacsize() {
	pacman -Qi | awk '/^Name/{name=$3} /^Installed Size/{print $4$5, name}' | sort -h
}
