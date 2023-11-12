export PATH="$HOME/usr/sbin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

export _JAVA_AWT_WM_NONREPARENTING=1

# enable bash completion in interactive shells
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

alias ls='ls --color=auto'
alias la='ls -la'
alias ll='ls -lav --ignore=..'   # show long listing of all except ".."
alias l='ls -lav --ignore=.?*'   # show long listing but no hidden dotfiles except "."

alias avenv='source ~/.venv/bin/activate'

alias u='sudo apt update && sudo apt upgrade -y'
alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias cd..='cd ..'

[[ "$(whoami)" = "root" ]] && return

[[ -z "$FUNCNEST" ]] && export FUNCNEST=100          # limits recursive functions, see 'man bash'

neofetch
