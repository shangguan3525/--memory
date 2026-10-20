---
type: pref
status: active
created: 2026-10-20
source: dsh-session:本轮（B 决策）
tags: [life, sensitive, scope]
---
生活助理的记录范围：可执行事项（提醒、日程、习惯偏好）+ 健康与家人相关细节；不记他人隐私里的具体身份信息，不写任何凭证。

证据：本轮交互选择「可执行事项 + 健康/家人等细节」。
影响：
- 生活类笔记统一 `life-` 前缀，`tags` 带 `sensitive`，便于一次性检索或排除。
- 敏感内容一旦提交就留在 git 历史里，改文件删不掉历史；要私密就把 `memory/notes/life-*.md` 加进 `.gitignore`（该文件里已留注释行）。
- 硬约束第 1 条优先：只记你实际说过的内容，不据此推演或编造细节。
