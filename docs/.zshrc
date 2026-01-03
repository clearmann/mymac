if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git z zsh-syntax-highlighting zsh-autosuggestions autojump)

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


alias codedir="cd /Users/clearmann.liu/Documents/src"
alias softdir="cd /Users/clearmann.liu/Documents/soft"
alias gcp='git cherry-pick'

alias ,pi="echo 'Pinging Baidu' && ping www.baidu.com"
alias ,ip="ipconfig getifaddr en0 && ipconfig getifaddr en1"
alias ,gitconfig="vim ~/.gitconfig"
alias ,sshconfig="vim ~/.ssh/config"
alias ,zshrc="vim ~/.zshrc"
alias ,c="code ."
alias ,i="webstorm ."
alias ,g="goland ."
alias ~="cd ~"
alias ..="cd ../"
alias ...="cd ../../"
alias ll="ls -alhG"
alias ls="ls -G"

# nginx 相关
alias nginx-start="nginx -t && brew services start nginx"
alias nginx-restart="nginx -t && brew services restart nginx"
alias nginx-stop="brew services stop nginx"

alias git="hub"
alias st="status"
alias help='tldr'
alias lg="lazygit"
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export TLDR_LANGUAGE="zh"


