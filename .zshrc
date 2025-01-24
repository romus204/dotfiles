export PATH=$HOME/bin:/usr/local/bin:$HOME/go/bin:$PATH
export PATH=$PATH:/Users/$USER/go/go1.23.1/bin/ 

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="af-magic"

plugins=(sudo git npm macos zsh-autosuggestions zsh-syntax-highlighting)

FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias nvimconfig="nvim ~/.config/nvim"
alias go="~/go/go1.23.1/bin/go"
alias lg='lazygit'

export TERM=xterm-256color
export GPG_TTY=$(tty)

bindkey "^[[1;954D" beginning-of-line
bindkey "^[[1;954C" end-of-line
