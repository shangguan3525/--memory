---
type: fact
status: active
created: 2026-10-20
source: bash ls -a "$HOME/.dsh"
tags: [dsh, paths]
---
DSH 全局数据都在 `~/.dsh`：`sessions/`、`dsh-session-archive/`、`storages/`、`task-board/`、`profiles/`、`skins/`、`attachments/`、`.credentials.yaml`；没有全局指令文件。

证据：`ls -a "$HOME/.dsh"`；`$HOME/AGENTS.md` 与 `$HOME/.dsh/AGENTS.md` 均不存在。
影响：回放旧会话用 `@[label](dsh-session:<id>)`；密钥只在 `.credentials.yaml`，笔记里只写存放位置，绝不写值。
关联：[[env-workspace-memory-layout]]
