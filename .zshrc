# Add /bin
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# Path
export ZSH=$HOME/.oh-my-zsh
export PATH=$PATH:/usr/sbin:/sbin:/etc/usr/sbin
export WORK=$HOME/Workspace
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$WORK/go

# Themes
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir rbenv)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vcs time)

# Plugins
plugins=(
  git
  dnf
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Aliases
alias ez="vim ~/.zshrc"
alias rz="source ~/.zshrc"
alias ev="vim ~/.vimrc"
alias v="vim"
alias eg="vim ~/.gitconfig"
alias ws="cd $WORK"
alias up="sudo apt-get update -y && sudo apt-get upgrade -y"
