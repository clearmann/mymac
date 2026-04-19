## 配置文件
```
# 绑定快捷键：切换到上一个标签页
keybind = super+left=previous_tab

# 绑定快捷键：切换到下一个标签页
keybind = super+right=next_tab


# 关闭终端/标签页/分屏时，不弹出确认提示框
confirm-close-surface = false

# 设置主题
theme = ToyChest


# --- 字体与排版 ---
font-family = "Maple Mono NF CN"
font-size = 14
font-thicken = true
adjust-cell-height = 2


# --- 窗口与外观 ---
background-blur-radius = 30
macos-titlebar-style = transparent
window-padding-x = 10
window-padding-y = 8
window-save-state = always
window-theme = auto


# --- 光标 ---
cursor-style = bar
cursor-style-blink = true
cursor-opacity = 0.8

# --- 鼠标 ---
mouse-hide-while-typing = true



# --- 快捷终端（类似 Quake 下拉终端）---
quick-terminal-position = top
quick-terminal-screen = mouse
quick-terminal-autohide = true
quick-terminal-animation-duration = 0.15



# --- Shell 集成 ---
shell-integration = detect


# 字体大小
keybind = cmd+plus=increase_font_size:1
keybind = cmd+minus=decrease_font_size:1
keybind = cmd+zero=reset_font_size


# --- 性能 ---
# 较大的滚动缓冲区（25MB）
scrollback-limit = 25000000
```