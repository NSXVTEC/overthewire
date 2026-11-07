# Launch-Bandit.ps1
# Save this in your main OverTheWire GitHub folder

$Level = Read-Host "Enter the Bandit Level you are starting (e.g., 0, 1, 2)"
$Username = "bandit$Level"
$HostName = "bandit.labs.overthewire.org"
$Port = 2220

# Create a local logs directory if it doesn't exist
$LogDir = ".\raw_logs"
if (!(Test-Path $LogDir)) { New-Item -ItemType Directory -Path $LogDir | Out-Null }

$LogPath = "$LogDir\bandit_level$Level`_log.txt"

Write-Host "`n[+] Starting automated local transcript at: $LogPath" -ForegroundColor Green
Start-Transcript -Path $LogPath -Append -Force | Out-Null

Write-Host "[+] Connecting to OverTheWire..." -ForegroundColor Cyan
Write-Host "[!] Note: You will need to paste the password for Level $Level" -ForegroundColor Yellow
ssh "$Username@$HostName" -p $Port

Write-Host "`n[-] SSH Session disconnected. Stopping transcript log..." -ForegroundColor Red
Stop-Transcript | Out-Null

Write-Host "[+] Log saved successfully. Ready to extract commands to GitHub!" -ForegroundColor Green
