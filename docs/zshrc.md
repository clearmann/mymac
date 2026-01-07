`.zshrc`的相关配置文件

配置 zsh 插件

`git`: 无须多言

`z`: 快速跳转命令插件

`zsh-syntax-highlighting`: 语法高亮，需要单独安装才能使用
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
`zsh-autosuggestions`: 自动补全,需要单独安装才能使用
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

`autojump`: 跳转目录
```bash
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

# 编码软件
# vscode
alias ,c="code ."
# webstorm
alias ,i="webstorm ."
# goland
alias ,g="goland ."
# antigravity
alias ,anti="antigravity ."
# cursor
alias ,cursor="cursor ."

alias ~="cd ~"
alias ..="cd ../"
alias ...="cd ../../"
alias ll="ls -alhG"
alias ls="ls -G"

# 有时候想临时记忆点东西，但又不知道放到哪里，开启一个临时目录
alias cdtmp="cd `mktemp -d /tmp/clearmann-XXXXXX`"

# 创建一个目录并进入
function mcd {
    mkdir $1 && cd $1
}

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


```