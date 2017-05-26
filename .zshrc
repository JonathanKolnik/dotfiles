export ZSH=/Users/jonathankolnik/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh


# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Completion
autoload -U compinit
compinit

# Use Emacs as the command line editor. Makes some keys work within tmux...
bindkey -e

# Keep lots of history.
export HISTSIZE=1000
export SAVEHIST=1000
export HISTFILE=~/.history

# Share history between terminals.
setopt inc_append_history
setopt share_history
setopt hist_ignore_all_dups

# No beeping.
unsetopt beep

# Automatically set pushd.
setopt auto_pushd
export dirstacksize=5

# Enable colored output from `ls`.
export CLICOLOR=1
if [[ $platform == 'mac' ]]; then
  export PATH=/usr/local/bin:$PATH
fi
export PATH=/usr/local/share/npm/bin:$PATH
alias be='bundle exec'

alias vs='vagrant ssh'
alias vr='vagrant reload'
alias gs='git status'
alias gst='git stash'
alias gsta='git stash apply'
alias gco='git checkout'
alias gcm='git checkout master'
alias gcam='git commit -am'
alias gpoh='git push origin head'
alias gtfo='git push -f origin head'
alias grm='git checkout master && git pull && git checkout - && git rebase master'
alias gri='git rebase -i'
tnew() { tmux new-session -s $1 \; \
  split-window -v -p 30 \; \
  split-window -h -p 66 \; \
  split-window -h -p 50 \; \
  select-pane -t 0 }

autoload -U promptinit && promptinit

prompt pure
 # Vim aliases
  if [[ $platform == 'mac' ]]; then
    MY_VIM='mvim -v' # terminal MacVim
    alias sysvim='/usr/bin/vim'
    alias vim=$MY_VIM
  elif [[ $platform == 'linux' ]]; then
    MY_VIM='vim'
  fi
  alias vi=$MY_VIM
  alias v=$MY_VIM


export PATH="/Users/jonathankolnik/lello/node_modules/.bin/:$PATH"
function es() {
  ruby ~/.eslint_compare.rb
}

export NVM_DIR="/Users/jonathankolnik/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH=$PATH:/usr/local/bin

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/jonathankolnik/.sdkman"
[[ -s "/Users/jonathankolnik/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/jonathankolnik/.sdkman/bin/sdkman-init.sh"
