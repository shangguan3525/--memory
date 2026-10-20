---
type: fact
status: active
created: 2026-10-20
source: file:AGENTS.md + 列目录验证
tags: [workspace, paths, memory]
---
本工作区只有 `AGENTS.md` 与 `memory/`（Obsidian vault）；不存在全局或跨工作区的记忆层。

证据：`D:\shangguan`、`Documents`、`deepseek-harness`、`$HOME`、`~/.dsh` 下均无 `AGENTS.md`；工作区根目录仅 `AGENTS.md` + `memory/`。
影响：换工作区即无记忆；需要跨项目复用的断言必须显式复制到目标工作区，不要指望自动继承。
关联：[[env-dsh-home-layout]]
