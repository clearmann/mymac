# 让终端飞起来的 CLI 工具

这一篇把我 `Brewfile` 里那堆命令行小工具集中讲一下。它们单个看都不起眼，凑在一起却能让终端体验上一个台阶。

> 安装：这些工具都在仓库的 [`Brewfile`](../Brewfile) 里，`brew bundle` 一把梭即可，下面不再重复安装命令。
> 接入 shell（alias / 插件）的部分见 [zsh](zsh.md)，这里只讲每个工具本身怎么用。

## 看文件 / 搜代码

### bat —— cat 的高亮增强版

带语法高亮、行号和 Git 改动标记的 `cat`。

```bash
bat README.md           # 高亮 + 行号
bat -p script.sh        # 纯净模式，不要行号和边框，方便复制
```

可以用 alias 替换掉 `cat`，但注意它默认会分页，写脚本时记得用 `bat -p` 或直接用原生 `cat`：

```bash
alias cat="bat -p"
```

### the_silver_searcher (ag) —— 超快的代码搜索

在整个项目里搜关键词，比 `grep -r` 快得多，还自动忽略 `.gitignore` 里的文件。

```bash
ag "TODO"               # 当前目录递归搜 TODO
ag "useState" src/      # 只在 src 下搜
```

### tree —— 树状查看目录

```bash
tree -L 2               # 只展开两层，不然层级太深刷屏
tree -L 2 -I node_modules   # 忽略 node_modules
```

## 在历史和文件里模糊跳转

### fzf —— 模糊查找

fzf 是这堆工具里最值得花五分钟配置的一个。安装后跑一次它自带的脚本，把键位绑定接进 zsh：

```bash
$(brew --prefix)/opt/fzf/install
```

启用后最常用的两个快捷键：

- `Ctrl + R`：模糊搜索历史命令，再也不用一直按上箭头翻。
- `Ctrl + T`：在当前目录模糊找文件，选中后路径自动填到命令行。

配合 `bat` 做预览，体验更好（写进 `~/.zshrc`）：

```bash
export FZF_CTRL_T_OPTS="--preview 'bat -p --color=always {}'"
```

### autojump —— 目录快速跳转

记录你去过的目录，之后用 `j 关键词` 直接跳，不用敲完整路径。插件接入方式见 [zsh](zsh.md)。

```bash
j mymac                 # 跳到之前去过的、路径里含 mymac 的目录
```

## Git 用得更爽

### lazygit —— 终端里的 Git GUI

一个全键盘操作的 Git 界面，暂存、提交、查看 diff、解决冲突、交互式 rebase 都不用记命令。我在 [zsh](zsh.md) 里把它设成了 `lg`。

```bash
lg                      # = lazygit
```

### diff-so-fancy —— 更好看的 diff

把 `git diff` 的输出排版得更清晰。装好后设成 Git 的默认 pager：

```bash
git config --global core.pager "diff-so-fancy | less --tabs=4 -RF"
git config --global interactive.diffFilter "diff-so-fancy --patch"
```

### ugit —— 手滑后的后悔药

`git reset --hard` / 误删分支 / 错误的 rebase 之后，跑 `ugit` 它会列出可恢复的操作让你挑着还原，本质是给 `git reflog` 套了个友好界面。

```bash
ugit                    # 交互式选择要恢复的状态
```

### hub —— 给 git 加上 GitHub 能力

`hub` 是 `git` 的超集，能直接 clone `用户名/仓库名`、在命令行开 PR 等。我在 [zsh](zsh.md) 里直接 `alias git="hub"`。

```bash
git clone clearmann/mymac   # 不用写完整 URL
```

## 其他顺手的

### tldr —— 简化版 man

`man` 太啰嗦时，用 `tldr` 直接看某个命令最常用的几个例子。我设了中文输出（见 [zsh](zsh.md) 里的 `TLDR_LANGUAGE`），并把它 alias 成了 `help`。

```bash
tldr tar                # 直接看 tar 的常用示例
```

### wget —— 命令行下载

```bash
wget https://example.com/file.zip
```

---

> 小结：真正高频的其实是 `fzf`（Ctrl+R）、`bat`、`ag`、`lazygit` 这几个。先把它们用熟，剩下的等需要时再回来查。工具是为了省时间，别为了用而用。
