# Multi-Agent Adapters

根目录的 `AGENTS.md` 是跨 Agent 便携规则。`SKILL.md` 是完整 Codex/Claude skill 的事实源。
不同 Agent 的接入方式不同：一部分是 **skill 目录**，一部分是 **项目规则文件**。

下表路径为当前常见接入点；不同版本可能略有差异，以各工具官方文档为准。

| Agent | 类型 | 安装位置 | 手动操作 |
|---|---|---|---|
| Codex | Skill 目录 | `~/.codex/skills/sun-ge-xinfa/` | 运行 `install.ps1` 或 `install.sh` |
| Claude Code | Skill 目录 | `~/.claude/skills/sun-ge-xinfa/` | 复制 `SKILL.md`、`agents/`、`references/` |
| Cursor | 规则文件 | `.cursor/rules/sun-ge-xinfa.mdc` | 复制 `adapters/cursor.mdc` |
| Windsurf | 规则文件 | `.windsurf/rules/sun-ge-xinfa.md` | 复制 `AGENTS.md` |
| Gemini CLI | 上下文文件 | `GEMINI.md` 或 `~/.gemini/GEMINI.md` | 把 `AGENTS.md` 内容合并进已有 `GEMINI.md` |
| GitHub Copilot | 指令文件 | `.github/copilot-instructions.md` | 把 `AGENTS.md` 内容合并进已有文件 |
| Cline | 规则文件 | `.clinerules/sun-ge-xinfa.md` | 复制 `AGENTS.md` |
| Trae（字节） | 规则文件 | `.trae/rules/sun-ge-xinfa.md` | 复制 `AGENTS.md` |
| 通义灵码 / Qoder | 规则文件 | `.lingma/rules/sun-ge-xinfa.md` 或 `.qoder/rules/sun-ge-xinfa.md` | 复制 `AGENTS.md` |
| 腾讯 CodeBuddy | 规则文件 | `.codebuddy/rules/sun-ge-xinfa.md` | 复制 `AGENTS.md` |
| 豆包 MarsCode | 规则文件 | `.mars/rules/sun-ge-xinfa.md` | 复制 `AGENTS.md` |
| 百度 Comate | 规则文件 | `.comate/rules/sun-ge-xinfa.md` | 复制 `AGENTS.md` |

## One-Command Install For Rule Agents

在项目根目录运行：

### PowerShell

```powershell
irm https://raw.githubusercontent.com/XN-289/sun-ge-xinfa-skill/main/install-agents.ps1 | iex
```

### macOS / Linux

```bash
curl -fsSL https://raw.githubusercontent.com/XN-289/sun-ge-xinfa-skill/main/install-agents.sh | bash
```

脚本会把便携规则写入当前项目常见的规则目录；对于会覆盖用户已有配置的
`GEMINI.md` 和 `copilot-instructions.md`，脚本只打印追加提示，不覆盖。
