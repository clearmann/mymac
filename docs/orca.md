# Orca 配置

这里备份 Orca 中可迁移、适合纳入版本管理的配置，原始位置为 `~/.orca/`。账号、凭据、会话、工作区和缓存不在备份范围内。

## 配置内容

```text
config/orca/
├── keybindings.json   # 自定义快捷键
└── agent-hooks/       # Orca 生成并维护的 Agent 接入脚本
```

`agent-hooks` 当前包含 Antigravity、Claude Code、CodeBuddy、Copilot、Codex、Gemini、Grok、Kimi 和 Qwen Code 的 hook 脚本。

这些脚本由 Orca 管理，升级后可能被重新生成，不建议手动修改。脚本通过 `ORCA_AGENT_HOOK_*` 环境变量在运行时取得本地连接信息，仓库中没有保存对应的 token。各 Agent 客户端自身的完整配置也不属于这份备份。

## 自定义快捷键

`Mod` 在 macOS 上对应 `Cmd`。

| 快捷键 | 功能 |
| --- | --- |
| `Cmd + Option + ←` | 切换到上一个标签页（包含所有类型） |
| `Cmd + Option + →` | 切换到下一个标签页（包含所有类型） |
| `Cmd + ←` | 返回 Worktree 历史中的上一个位置 |
| `Cmd + →` | 前进到 Worktree 历史中的下一个位置 |

## 恢复到新 Mac

先完全退出 Orca，避免运行中的应用覆盖配置，然后在本仓库根目录执行：

```bash
rsync -a config/orca/ ~/.orca/
```

该命令会覆盖 `~/.orca` 中的同名文件，但不会删除其他文件。恢复后启动 Orca，并检查各 Agent 的集成状态。

## 更新仓库中的备份

在本仓库根目录执行：

```bash
cp ~/.orca/keybindings.json config/orca/keybindings.json
rsync -a ~/.orca/agent-hooks/ config/orca/agent-hooks/
```

## 明确不备份的内容

- `~/Library/Application Support/orca/`：包含账号会话、加密密钥、数据库、终端历史、运行状态和缓存。
- `~/orca/workspaces/`：实际项目工作区，不是应用配置。
- `~/Library/Preferences/com.stablyai.orca.plist`：主要是 macOS 自动维护的窗口与文件对话框状态。
