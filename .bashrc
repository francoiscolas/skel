if [ -e /etc/skel/.bashrc ]; then
  . /etc/skel/.bashrc
fi

#
# Prompt
#

__user_color_ps1() {
  EXIT=$?
  # white (97) for root, green (32) for others
  [ $EUID -eq 0 ] && echo 97 || echo 32
  return $EXIT
}

__pwd_ps1() {
  EXIT=$?
  pwd | sed "s:^$HOME:~:; :a; s:/\(.\)[^/]\+/:/\1/:; ta"
  return $EXIT
}

__docker_machine_ps1() {
  EXIT=$?
  FORMAT=${1:-%s}
  [ ! -z "$DOCKER_MACHINE_NAME" ] && printf "$FORMAT\n" "$DOCKER_MACHINE_NAME"
  return $EXIT
}

__exit_code_ps1() {
  EXIT=$?
  FORMAT=${1:-%s}
  [ $EXIT -ne 0 ] && printf "$FORMAT\n" "$EXIT"
  return $EXIT
}

PS1="\[\e[1;\$(__user_color_ps1)m\]\u\[\e[1;32m\]@\h\[\e[34m\]:\$(__pwd_ps1)\[\e[37m\]\$(__docker_machine_ps1 ':%s')\[\e[31m\]\$(__exit_code_ps1 ':%s')\[\e[0m\]\$ "

#
# Aliases
#

alias ll="ls -l"
alias la="ll -a"
alias lh="ll -h"

alias rp="rsync -avh --progress"  # copy with progress
alias rpz="rp -z"                 # rp with compress
