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

# Create files if they don't already exist
if (-not (Test-Path $md)) { New-Item -Path $md -ItemType File | Out-Null }
if (-not (Test-Path $py)) { New-Item -Path $py -ItemType File | Out-Null }

Write-Output "✅ Created: $name.md and $name.py in $targetDir"
