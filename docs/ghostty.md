## 配置文件
```
# --- 基础与模拟终端 ---
term = xterm-256color
shell-integration = detect

# --- 主题与外观 ---
theme = TokyoNight
# 建议保持 0.85 左右才有磨砂感，1.0 是完全不透明
background-opacity = 0.85
background-blur = true

# --- 字体设置 ---
font-family = "Sarasa Term SC"
font-size = 14
# 如果你觉得行间距太挤，可以开启下面这一行（Ghostty 正确语法）：
# adjust-line-height = 15%

# --- 窗口样式 (针对 macOS 优化) ---
# hidden 会彻底隐藏标题栏，最简洁
macos-titlebar-style = tabs
window-padding-x = 10
window-padding-y = 8
window-save-state = always
window-theme = auto
window-vsync = true

# --- 光标样式 ---
cursor-style = block
cursor-style-blink = true
cursor-opacity = 0.8

# --- 行为控制 ---
confirm-close-surface = false
mouse-hide-while-typing = true
scrollback-limit = 8388608

# --- 快捷终端 (Quick Terminal / Quake Mode) ---
quick-terminal-position = top
quick-terminal-screen = mouse
quick-terminal-autohide = true
quick-terminal-animation-duration = 0.15

# --- 快捷键自定义 ---
# Ghostty 默认支持 cmd+ 和 cmd- 缩放，手动定义也没问题
keybind = super+left=previous_tab
keybind = super+right=next_tab

keybind = cmd+plus=increase_font_size:1
keybind = cmd+minus=decrease_font_size:1
keybind = cmd+zero=reset_font_size
```