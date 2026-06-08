# 全新 Mac 从零配置 Checklist

拿到一台新 Mac（或重装系统后），照着这条路径走一遍，就能把我的整套配置复刻出来。每一步都链到对应的详细文章，按顺序勾选即可。

## 1. 系统基础设置

先把系统层面的偏好调好，这部分不依赖任何软件。

- [ ] 调快键盘重复速率、触控板、截图、Finder、Dock 等系统偏好 —— 见 [mac 必备的基础配置](mac.md)

## 2. 装好包管理器

后面几乎所有软件都靠它安装。

- [ ] 安装 Homebrew（有代理先开代理）—— 见 [无敌的包管理器 Homebrew](homebrew.md)

## 3. 一条命令装齐所有 App 与 CLI 工具

- [ ] 克隆本仓库后，在仓库根目录执行：

  ```bash
  brew bundle --file=./Brewfile
  ```

  这一步会装齐我常用的全部图形 App 与命令行工具，清单见 [`Brewfile`](../Brewfile)。

## 4. 打造终端环境

- [ ] 配置现代终端 Ghostty（主题、字体、快捷终端等）—— 见 [现代终端 Ghostty](ghostty.md)
- [ ] 安装 oh-my-zsh，配好插件、主题与 alias —— 见 [方便使用的 shell zsh](zsh.md)
- [ ] 把常用 CLI 工具用熟（fzf / bat / ag / lazygit 等）—— 见 [让终端飞起来的 CLI 工具](cli-tools.md)

## 5. 改键与快捷启动

把键盘和 App 切换的效率拉满，这几步相互关联（F19 是基础）。

- [ ] 用 Karabiner-Elements 把右 Cmd 改成 F19（Hyper 键）—— 见 [配置自己的专有快捷键 F19](f19.md)
- [ ] 配置 Thor，用 F19 组合键秒切常用 App —— 见 [如何快速切换 APP Thor](thor.md)
- [ ] 配置 Alfred，把快捷键也设成 F19，找回 Workflow 与剪贴板历史 —— 见 [必备效率软件 alfred](alfred.md)

## 6. 开发配置

- [ ] 配好 Git 的 name / email、push 默认行为与全局 ignore —— 见 [必不可少的 git](git.md)

## 7. 我的个性化收尾

> 这部分是每个人自己的偏好，没有标准答案。下面是我换机时还会顺手做的几件事，你可以按自己的习惯增删：

- [ ] 登录 1Password，导入密码与 SSH key
- [ ] 用 gas-mask 切换 hosts、espanso 导入文本片段
- [ ] 把 Obsidian / Alfred 等软件的配置目录指向云盘里的旧配置
- [ ]

---

> 全部勾完，这台新 Mac 就和我日常用的那台基本一致了。整个流程里最花时间的是第 3 步的下载，建议全程挂着代理。
