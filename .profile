if [ -e /etc/skel/.profile ]; then
  . /etc/skel/.profile
fi

# configure rbenv
#PATH="$HOME/.rbenv/bin:$PATH"
#eval "$(rbenv init -)"

# configure NVM
NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# set PATH so it includes AndroidStudio
PATH="$HOME/android/studio/bin:$PATH"
