# ========================================
# FortiGate Config Generator - Shah Edition (Single-Quote Safe)
# ========================================

# Ask user for inputs
$Location = Read-Host "Enter location name (e.g., ATL)"
$BaseIP = Read-Host "Enter base subnet prefix (e.g., 10.25)"

# Paths
$TemplatePath = 'C:\Users\snaingsu\Documents\Network\Baseline\Baseline_FortiGate_Template.conf'
$OutputFolder = 'C:\Users\snaingsu\Documents\Network\New config'

# Ensure output directory exists
if (!(Test-Path $OutputFolder)) {
    New-Item -Path $OutputFolder -ItemType Directory | Out-Null
}

# Read template content
$Config = Get-Content $TemplatePath -Raw

# Replace placeholders
$Config = $Config -replace '{Location}', $Location
$Config = $Config -replace '10\.17', $BaseIP

# Write new config
$OutputPath = "$OutputFolder\FGT-$Location.conf"
$Config | Out-File -FilePath $OutputPath -Encoding utf8

Write-Host "`n✅ New FortiGate config created:`n$OutputPath"
