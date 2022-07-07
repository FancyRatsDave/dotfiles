export ZSH=$HOME/.oh-my-zsh
export GOPATH="$HOME/go"

export PATH="/opt/homebrew/bin:$PATH:$HOME/.foundry/bin:$GOPATH/bin:$HOME/.cargo/bin"
export HOMEBREW_PATH=$(brew --prefix)
export PATH="$HOMEBREW_PATH/bin:$PATH:$HOMEBREW_PATH/opt/node@16/bin"

export HOMEBREW_NO_ENV_HINTS=true
export EDITOR='nvim'

alias vim='nvim'

eval "$(starship init zsh)"
test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)

plugins=(
  cmdtime
  fzf-fasd
  zsh-syntax-highlighting
  zsh-autosuggestions
  z
  brew
  ipfs
  docker
  docker-compose
  tmux
  yarn
  npm
  fancy-ctrl-z
  aws
  macos
)

source $ZSH/oh-my-zsh.sh

# Must be down here because omz overwrites
alias ls='ls -Gltra'
