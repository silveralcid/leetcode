param(
    [Parameter(Mandatory = $true)]
    [string]$name,

    [string]$folder = ""  # optional folder name
)

# Get repo root (where this script lives)
$repoRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $repoRoot

# If folder provided, ensure it exists and adjust path
if ($folder -ne "") {
    $targetDir = Join-Path $repoRoot $folder
    if (-not (Test-Path $targetDir)) {
        New-Item -Path $targetDir -ItemType Directory | Out-Null
    }
}
else {
    $targetDir = $repoRoot
}

# Define full file paths
$md = Join-Path $targetDir "$name.md"
$py = Join-Path $targetDir "$name.py"

# Create .md if missing and add template
if (-not (Test-Path $md)) {
    New-Item -Path $md -ItemType File | Out-Null
    Set-Content -Path $md -Value "# Problem`n`n# Journal`n"
}

# Create .py if missing and add template
if (-not (Test-Path $py)) {
    New-Item -Path $py -ItemType File | Out-Null
    Set-Content -Path $py -Value "# Brute Force`n`n# Optimal`n"
}

Write-Output "✅ Created: $name.md and $name.py in $targetDir"
