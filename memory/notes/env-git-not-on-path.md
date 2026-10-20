---
type: fact
status: active
created: 2026-10-20
source: bash: command -v git; ls "/c/Program Files/Git/cmd/git.exe"; git --version
tags: [env, git, paths]
---
本机装了 Git 2.55（`C:\Program Files\Git\cmd\git.exe`），但**不在 PATH 上**；shell 里必须写全路径调用，否则报 `git: command not found`。

证据：`command -v git` 无输出；`ls "/c/Program Files/Git/cmd/git.exe"` 命中；该路径 `--version` 返回 `git version 2.55.0.windows.5`。
影响：需要版本操作时用 `"/c/Program Files/Git/cmd/git.exe"`；想让 `git` 直接可用，把 `C:\Program Files\Git\cmd` 加进用户 PATH。本工作区已是 git 仓库（首个提交 a6d5ffb，14 个文件）。
关联：[[env-workspace-memory-layout]]
