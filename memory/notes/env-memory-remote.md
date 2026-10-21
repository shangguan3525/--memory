---
type: fact
status: active
created: 2026-10-20
source: bash: git remote -v / push -u origin main / ls-remote --heads origin
tags: [git, remote, backup]
---
记忆库远端是 `git@github.com:shangguan3525/--memory.git`，本地分支 `main` 跟踪 `origin/main`；认证走 `~/.ssh/id_ed25519`（ed25519、无密码短语、仅本机）。

证据：`git push -u origin main` 输出 `* [new branch] main -> main`；`git ls-remote --heads origin` 返回 `349b570… refs/heads/main`，与本地 HEAD 一致（推送前远端为空）。
影响：备份不再单点，`git push` 即同步。仓库名以两个连字符开头（`--memory`），在命令行里只作为 URL 参数出现，不要把它单独当裸参数传递否则会被当成选项。可见性（私有/公开）尚未核实，标「待验证」。
关联：[[env-git-not-on-path]]
