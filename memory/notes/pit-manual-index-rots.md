---
type: pitfall
status: active
created: 2026-10-20
source: 实测 memory/MEMORY.md 清单为空、需手填「最后更新」
tags: [memory, index]
---
手工维护的索引表一定腐坏：它与内容分离，且没有任何更新触发点。

现象：骨架建好后 `MEMORY.md` 的笔记清单表体仍为空，四份分类笔记全是「待填写」，索引的「最后更新」列需要人手工填。
真相：写入靠自觉 = 不写；索引靠手填 = 与真相不同步，最后变成假信息。
解决：frontmatter 是唯一真相，`bash memory/tools/reindex.sh` 重生成 `INDEX.md`；表里只留一句可判定真假的断言，不做手工状态簿记。
关联：[[dec-memory-three-tier-atomic-notes]]
