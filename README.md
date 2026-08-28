# 孙割心法 · Sun-Ge Xinfa

> 把“吃相”从道德题改成回收率题：钱出去了，能不能回来？以什么资产回来？失败时谁兜底？

![status](https://img.shields.io/badge/status-v1.1-informational) ![skill](https://img.shields.io/badge/Codex-SKILL.md-blue) ![mode](https://img.shields.io/badge/mode-satire%20%2B%20strategy-orange) ![safety](https://img.shields.io/badge/redline-no%20abuse%20ops-red)

**孙割心法**是一个面向加密圈、公关事件、内容生意和谈判场景的 Skill。它把“孙哥式操作”抽象成一套冷冰冰的 **Recoverable-Cost Model**：不在乎场面评价，只在乎成本能否转成现金、注意力、控制权、期权和退出故事。

它不 impersonate 真人，也不给可执行的作恶手册。PUA、拿捏、隐私榨取这些“重头戏”不会绕过，而会按黑箱拆开：手段叫什么、为什么会成立、谁在付账、目标怎么退场，最后给一句“Agent 提醒：不建议照做”。

---

## 1. 为什么这个 Skill 有毒但有边界

传统分析问：

```text
这件事好不好看？谁被骂了？谁人设崩了？
```

孙割心法问：

```text
支出是成本还是期权？
失败后还剩什么可卖？
注意力最终从哪里变现？
谁承担下行风险？
这波操作烧掉多少信用？
```

六个问题下来，很多“热闹”会立刻露出资产负债表。

---

## 2. 核心模型：六个回收问题

| 问题 | 判断什么 |
|---|---|
| 现金流向 | 谁付钱、何时付、付给谁 |
| 回收形态 | 现金 / 流量 / 控制权 / 期权 / 叙事素材 |
| 回收时间 | 当天、季度、下轮周期，还是永远 PPT |
| 失败出口 | 失败后有什么资产可 salvage |
| 成本归属 | 谁承担下行风险 |
| 信用燃烧 | 还剩多少承诺可信 |

输出结论只有四档：**加仓 / 小试 / 改结构 / 放弃**。

---

## 3. J 节点：景甜小作文

这个案例是本 Skill 的第一等节点，不是普通娱乐瓜。

小作文自称虚构，又带着真实姓名、亲密视角、大额资金与私域细节。于是它变成一台注意力清算机：

- 小说被读者升维成卷宗。
- 对方每澄清一个细节，叙事就多一次“确认块”。
- 虚构声明降低证伪压力，却保留真实感。
- 一方把争议转成流量库存，另一方用形象支付清算成本。

meme 里的读法是：**孙哥完全不亏，钱、叙事、注意力都像是他的回收资产。**
分析里的读法是：**小作文的结构让叙述者显得不亏；这不等于私事为真，更不等于具体获利已被证明。**

完整拆解见 [references/jingtian-case-study.md](references/jingtian-case-study.md)，
发布用的长文案例见 [examples/jingtian-case-showcase.md](examples/jingtian-case-showcase.md)。

原文不随本仓库打包或再分发。出处、链接、未授权说明和本地研究指纹见
[references/source-manifest.md](references/source-manifest.md)；一手公开仓库为
[HEJustinSun/my-girlfriend-jingtian-latex](https://github.com/HEJustinSun/my-girlfriend-jingtian-latex)。

---

## 4. 你能得到什么

| 使用场景 | Skill 输出 |
|---|---|
| 热点事件 / 小作文 | 事实层、叙事层、利益层、回应成本 |
| 项目 or 代币叙事 | 流量库存、信用燃烧、退出结构 |
| 内容生意 | 把一次热闹改成可复用资产 |
| 商业谈判 | 双方真实收益、替代方案、分阶段成交结构 |
| 黑箱拆解 | PUA / 拿捏 / 隐私杠杆的机制、伤害与防御 |
| 亏钱复盘 | 回本 Buff 拆解 + 24 小时防割清单 |
| 梗卡创作 | 触发 / 效果 / 代价 / 克制 / 事实标签 |

一句话：它帮你看懂“不体面但有效”的结构，同时不让自己的账号、仓位和信用一起进去。

---

## 5. 一键安装

### Codex Desktop / Windows PowerShell

```powershell
irm https://raw.githubusercontent.com/XN-289/sun-ge-xinfa-skill/main/install.ps1 | iex
```

### macOS / Linux

```bash
curl -fsSL https://raw.githubusercontent.com/XN-289/sun-ge-xinfa-skill/main/install.sh | bash
```

安装到：

```text
~/.codex/skills/sun-ge-xinfa
```

### Claude / 其他兼容 SKILL.md 的 Agent

```bash
git clone https://github.com/XN-289/sun-ge-xinfa-skill.git ~/.claude/skills/sun-ge-xinfa
```

### 手动更新

```bash
cd ~/.codex/skills/sun-ge-xinfa
git pull
```

### 其他 Agent / 国内 Agent

根目录的 `AGENTS.md` 是可移植规则，适配 Cursor、Windsurf、Gemini CLI、
GitHub Copilot、Cline、Trae、通义灵码/Qoder、腾讯 CodeBuddy、豆包 MarsCode、
百度 Comate 等工具。完整安装矩阵见
[adapters/README.md](adapters/README.md)。

在项目根目录执行：

```powershell
irm https://raw.githubusercontent.com/XN-289/sun-ge-xinfa-skill/main/install-agents.ps1 | iex
```

```bash
curl -fsSL https://raw.githubusercontent.com/XN-289/sun-ge-xinfa-skill/main/install-agents.sh | bash
```

脚本会写入各工具常见的规则目录；对 `GEMINI.md` 和
`.github/copilot-instructions.md` 这类单文件配置只打印追加提示，不覆盖已有内容。

---

## 6. 快速用法

安装后直接说：

```text
使用 $sun-ge-xinfa，用孙模型拆这个热点：钱、流量、控制权分别怎么回收？
```

```text
使用 $sun-ge-xinfa，把景甜小作文当成 J 节点，输出注意力清算表和梗卡。
```

```text
使用 $sun-ge-xinfa，帮我做计策沙盘：这个支出失败后还能剩什么资产？
```

```text
使用 $sun-ge-xinfa，用黑箱拆解：这篇小作文里的拿捏机制是什么？但不要给我执行步骤。
```

```text
使用 $sun-ge-xinfa，我亏钱后总想一把回本，帮我拆回本 Buff。
```

---

## 7. 文件结构

```text
sun-ge-xinfa/
├── SKILL.md
├── AGENTS.md
├── install.ps1
├── install.sh
├── install-agents.ps1
├── install-agents.sh
├── LICENSE
├── agents/
│   └── openai.yaml
├── adapters/
│   ├── README.md
│   └── cursor.mdc
├── examples/
│   └── jingtian-case-showcase.md
├── tests/
│   ├── red-team.md
│   └── adversarial-check.ps1
└── references/
    ├── public-record.md
    ├── narrative-analysis.md
    ├── jingtian-case-study.md
    ├── source-manifest.md
    ├── strategy-sandbox.md
    ├── dark-patterns.md
    ├── meme-system.md
    └── guardrails.md
```

---

## 8. 红线

这个 Skill 可以尖锐，但不能变成伤害工具：

- 不 impersonate 孙宇晨、景甜或任何真人。
- 不提供可执行的 PUA、情感操控、敲诈、骚扰、隐私挖掘或性剥削手册；这些手段只做黑箱拆解，并明确“不建议照做”。
- 不编造证据、聊天记录、转账记录或法院文件。
- 不把未核实私事当事实。
- 不给投资建议、收益承诺或自动回本交易策略。

最强的“吃干抹净”不是把对方榨干，而是把合法价值吃干净：现金、复用、分销、品牌、期权、二次交易，全部算清，且对方下次仍愿意和你成交。

---

## License

MIT
