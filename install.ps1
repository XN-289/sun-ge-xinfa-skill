param(
    [string]$Destination = ""
)

$ErrorActionPreference = 'Stop'

$repo = 'https://github.com/XN-289/sun-ge-xinfa-skill'
$branch = 'main'
$target = if ($Destination) {
    $Destination
} else {
    Join-Path $HOME '.codex/skills/sun-ge-xinfa'
}

if (Test-Path -LiteralPath $target) {
    Write-Host "Already installed: $target"
    Write-Host 'To reinstall, remove or rename that folder, then run this script again.'
    exit 0
}

$files = @(
    'SKILL.md',
    'agents/openai.yaml',
    'references/public-record.md',
    'references/narrative-analysis.md',
    'references/jingtian-case-study.md',
    'references/source-manifest.md',
    'references/strategy-sandbox.md',
    'references/meme-system.md',
    'references/guardrails.md'
)

foreach ($file in $files) {
    $outFile = Join-Path $target $file
    $folder = Split-Path -Parent $outFile
    New-Item -ItemType Directory -Path $folder -Force | Out-Null
    Invoke-WebRequest -Uri "$repo/raw/$branch/$file" -OutFile $outFile -UseBasicParsing
}

Write-Host "Installed sun-ge-xinfa to $target"
Write-Host 'Restart Codex, then invoke: 使用 $sun-ge-xinfa'
