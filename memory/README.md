# 记忆库协议

> 这是 DSH 在 `default-workspace` 的记忆库，同时是一个 Obsidian vault。
> 唯一硬规则：**结构必须在 Obsidian 不运行时也可读**——纯文本 + frontmatter，任何插件渲染结果都不是真相源。

## 目录

```
memory/
├─ README.md            # 本文件：协议（不改内容）
├─ INDEX.md             # 生成物：由 notes/ 的 frontmatter 汇总，禁止手改
├─ notes/               # 唯一真相层：一条断言一文件，文件名即 id
├─ templates/note.md    # Obsidian 模板
└─ _legacy/             # 旧骨架（空模板），可随时删除
```

## 一条记忆 = 一个文件

```markdown
---
type: fact            # fact | decision | pref | pitfall
status: active        # active | superseded
created: 2026-10-20
source: dsh-session:xxxx   # 或 file:AGENTS.md / 命令
tags: [memory, tooling]
---
一句话断言（这是 INDEX 里显示的「断言」列，必须自足、可判定真假）。

证据：能复现这条断言的最小事实（命令、文件:行、输出）。
影响：以后该怎么做；这条断言不成立时会发生什么。
关联：[[另一条笔记的 slug]]
```

**断言是这条记忆的全部价值**：未来没有它，我会做错事或重做一遍 → 才值得写。
一分钟内能从代码或文件里直接推出来的东西，不写。

## 读取（我的路径）

1. 读 `INDEX.md`（生成表，含断言、类型、状态）。
2. 只展开与当前任务命中的那一两条 `notes/*.md`，不全量加载。
3. 需要完整推理过程时，用 frontmatter 里的 `source: dsh-session:<id>` 回放，而不是在笔记里复述对话。

## 写入（当回合内完成）

触发点只有三个：核实了不显然的环境事实 / 做了有被否选项的决策 / 踩坑并解决。

```bash
grep -rl "关键断言词" memory/notes        # 1. 先搜，避免近似重复
# 2. 新建或改写 memory/notes/<ascii-slug>.md（格式见上）
bash memory/tools/reindex.sh              # 3. 重生成索引
```

旧条被取代时，把旧文件 `status` 改为 `superseded` 并在正文写明取代者。

## frontmatter 字段约定

| 字段 | 必填 | 说明 |
| --- | --- | --- |
| `type` | 是 | fact 客观事实 / decision 决策+理由 / pref 偏好约束 / pitfall 踩坑排查 |
| `status` | 是 | active 有效 / superseded 已被取代 |
| `created` | 是 | `YYYY-MM-DD` |
| `source` | 是 | 证据来源：`dsh-session:<id>` 或 `file:路径#行` 或命令 |
| `tags` | 否 | 检索用标签 |
| `aliases` | 否 | 同义词，提升命中率 |

## Obsidian

- 程序位置：`D:\Obsidian`。
- 打开方式：Obsidian → Open folder as vault → 选 `D:\shangguan\Documents\deepseek-harness\default-workspace\memory`。
  只把 `memory/` 作为 vault，**不要**用整个工作区（源码树会污染图谱与搜索）。
- `.obsidian/` 只留在 `memory/` 内，不进索引。
- 插件（Dataview/Templater 等）只服务人看；INDEX 的正确性不依赖任何插件。
