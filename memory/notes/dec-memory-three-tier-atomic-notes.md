---
type: decision
status: active
created: 2026-10-20
source: dsh-session:本轮对话
tags: [memory, obsidian, index]
aliases: [记忆分层, 三层记忆]
---
记忆改为三层：Tier0 硬约束只留在 `AGENTS.md`；Tier1 真相在 `notes/*.md` 的 frontmatter；Tier2 情景细节用 `dsh-session:<id>` 回放而不复述。`INDEX.md` 由脚本生成，禁止手改。

理由：旧方案（四分类笔记 + 手填索引表）的写入全靠自觉，实测建立骨架后库内仍为 0 条；手工表与内容分离必然腐坏。
被否选项：把 Dataview/插件渲染结果当索引真相（agent 读磁盘纯文本，读不到渲染结果）；一事实一深目录嵌套（grep 与人双输）。
影响：新增记忆只走 `notes/` + `bash memory/tools/reindex.sh`，不再改 `AGENTS.md` 的规则段；要换结构就改这条决策。
关联：[[pit-manual-index-rots]] [[env-workspace-memory-layout]]
