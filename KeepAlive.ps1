# This script will keep your screen alive
# for every 120 seconds, scroll lock will get pressed
Clear-Host
Echo "...Lock screen avoider..."

$WShell = New-Object -com "Wscript.Shell"
$sleep = 120; 

while ($true)
{
  $WShell.sendkeys("{SCROLLLOCK}")
  Start-Sleep -Milliseconds 100
  Write-Host "Press Scroll lock"
  $WShell.sendkeys("{SCROLLLOCK}")
  Write-Host "Waiting " $sleep " seconds" 
  Start-Sleep -Seconds $sleep
}