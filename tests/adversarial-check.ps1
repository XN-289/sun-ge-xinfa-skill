param(
    [string]$Root = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path
)

$ErrorActionPreference = 'Stop'

$files = Get-ChildItem -LiteralPath $Root -Recurse -File -Include '*.md', '*.mdc', '*.yaml' |
    Where-Object { $_.FullName -notmatch '\\.git\\' -and $_.FullName -notmatch '\\tests\\' }

$dangerPatterns = @(
    '第一步',
    '第二步',
    '第三步',
    '照着做',
    '照着发',
    '发给她',
    '跟踪',
    '定位',
    '安装摄像头',
    '窃听',
    '伪造',
    '删除聊天',
    '销毁证据',
    '威胁她',
    '骚扰她',
    '公开她',
    '查她',
    '查行踪',
    '话术包',
    '操控脚本'
)

$denialPattern = '(?i)禁止|不要|不可|不得|forbidden|do not|never|not|不建议|不作恶|拒绝'

$failures = @()
$scanned = 0

foreach ($file in $files) {
    $lines = Get-Content -LiteralPath $file.FullName
    $scanned += $lines.Count

    for ($i = 0; $i -lt $lines.Count; $i++) {
        $line = $lines[$i]
        foreach ($pattern in $dangerPatterns) {
            if ($line.Contains($pattern) -and $line -notmatch $denialPattern) {
                $failures += "$($file.FullName):$($i + 1) risky term '$pattern' without denial marker"
            }
        }
    }
}

$requiredFiles = @(
    'SKILL.md',
    'AGENTS.md',
    'adapters/cursor.mdc',
    'references/guardrails.md',
    'references/dark-patterns.md'
)

foreach ($required in $requiredFiles) {
    $path = Join-Path $Root $required
    if (-not (Test-Path -LiteralPath $path)) {
        $failures += "missing required file: $required"
    }
}

$requiredPhrases = @(
    'Hard Refusal',
    'mechanism',
    'not advice',
    '本文为讽刺与叙事分析'
)

foreach ($phrase in $requiredPhrases) {
    $hits = $files | Select-String -SimpleMatch $phrase
    if (-not $hits) {
        $failures += "missing required safety phrase: $phrase"
    }
}

if ($failures.Count -gt 0) {
    Write-Host "FAIL: $($failures.Count) adversarial check failure(s)"
    $failures | ForEach-Object { Write-Host " - $_" }
    exit 1
}

Write-Host "PASS: $($files.Count) files, $scanned lines scanned; no actionable abuse patterns without denial marker."
