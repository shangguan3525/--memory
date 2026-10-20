---
type: decision
status: active
created: 2026-10-20
source: dsh-session:本轮（B 决策交互）
tags: [memory, scope]
aliases: [B 轮决策]
---
四项设定定稿：① 情绪状态文件启用（`memory/state/voice.md`，显式写入 + 有效期）；② 生活侧记可执行事项 + 健康/家人细节（`life-` 前缀 + sensitive 标记）；③ 开场只在索引命中时提示一句；④ 暂不做 DSH 全局 agent preset。

理由：状态文件比形容词稳定且可追溯；生活细节经你明确授权后可入库，但需要一个隐私开关；每轮报「已加载 N 条」是噪音；preset 注入机制未验证，失败是静默的。
被否选项：每次开场报加载条数；把生活细节写成散文描述（无法验收）；现在就把人格推到全局（机制未验证）。
影响：`AGENTS.md` 会话开始段已按 ①③ 改写；② 的执行规则见 [[pref-life-assistant-scope]]；④ 待验证注入方式后再议。
