param(
    [string]$ProjectRoot = (Get-Location).Path,
    [switch]$SkipSkill
)

$ErrorActionPreference = 'Stop'

$branch = 'main'
$rawBase = 'https://raw.githubusercontent.com/XN-289/sun-ge-xinfa-skill'
$repo = 'https://github.com/XN-289/sun-ge-xinfa-skill'
$agentFile = "$rawBase/$branch/AGENTS.md"
$cursorFile = "$rawBase/$branch/adapters/cursor.mdc"

function Install-RuleFile {
    param(
        [string]$RelativePath,
        [string]$Uri
    )

    $out = Join-Path $ProjectRoot $RelativePath
    $folder = Split-Path -Parent $out
    New-Item -ItemType Directory -Path $folder -Force | Out-Null
    Invoke-WebRequest -Uri $Uri -OutFile $out -UseBasicParsing
    Write-Host "Installed $out"
}

Install-RuleFile '.cursor/rules/sun-ge-xinfa.mdc' $cursorFile

$markdownRules = @(
    '.windsurf/rules/sun-ge-xinfa.md',
    '.clinerules/sun-ge-xinfa.md',
    '.trae/rules/sun-ge-xinfa.md',
    '.codebuddy/rules/sun-ge-xinfa.md',
    '.lingma/rules/sun-ge-xinfa.md',
    '.qoder/rules/sun-ge-xinfa.md',
    '.mars/rules/sun-ge-xinfa.md',
    '.comate/rules/sun-ge-xinfa.md'
)

foreach ($path in $markdownRules) {
    Install-RuleFile $path $agentFile
}

Write-Host 'Gemini CLI: append AGENTS.md content to GEMINI.md or ~/.gemini/GEMINI.md. Do not overwrite existing content.'
Write-Host 'GitHub Copilot: append AGENTS.md content to .github/copilot-instructions.md. Do not overwrite existing content.'

if (-not $SkipSkill) {
    $claudeDir = Join-Path $HOME '.claude/skills/sun-ge-xinfa'
    if (Test-Path -LiteralPath $claudeDir) {
        Write-Host "Claude skill already exists: $claudeDir"
    } else {
        $runtime = @(
            'SKILL.md',
            'agents/openai.yaml',
            'references/public-record.md',
            'references/narrative-analysis.md',
            'references/jingtian-case-study.md',
            'references/source-manifest.md',
            'references/strategy-sandbox.md',
            'references/dark-patterns.md',
            'references/meme-system.md',
            'references/guardrails.md'
        )

        foreach ($file in $runtime) {
            $out = Join-Path $claudeDir $file
            $folder = Split-Path -Parent $out
            New-Item -ItemType Directory -Path $folder -Force | Out-Null
            Invoke-WebRequest -Uri "$repo/raw/$branch/$file" -OutFile $out -UseBasicParsing
        }

        Write-Host "Installed Claude skill to $claudeDir"
    }
}

Write-Host 'Rule adapters installed. For Codex, run install.ps1 or install.sh.'
