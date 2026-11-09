$Level = Read-Host "Enter the Bandit Level you want to launch (e.g., 0, 1, 2)"
$Username = "bandit$Level"
$HostName = "bandit.labs.overthewire.org"
$Port = 2220

$SolutionFile = ".\levels\bandit_level$Level.ps1"
if (Test-Path $SolutionFile) {
    Write-Host "`n[?? Reference] Displaying your previous notes/commands for Level $Level:" -ForegroundColor Yellow
    Get-Content $SolutionFile | Where-Object { $_ -match "^#" }
    Write-Host "--------------------------------------------------`n"
}

Write-Host "[+] Establishing secure SSH link to OverTheWire..." -ForegroundColor Cyan
ssh "$Username@$HostName" -p $Port
