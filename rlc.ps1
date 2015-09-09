$Date = date 

Write-Host "$Date - Starting script..."

# Changes into the directory of the Lync Accepted Certificates store
Write-Host "$Date - Navigating to the Lync cert store..."; 
set-location 'HKLM:\SOFTWARE\Microsoft\Cryptography\Services\RtcSrv\SystemCertificates\Accepted Certificates\Certificates'

# Removes all of the keys
Write-Host "$Date - Removing Lync certs..."
remove-item * 

# Restarts the Lync services in the correct order
Write-Host "$Date - Stopping Lync services..." 
Get-CsWindowsService | Stop-CsWindowsService

Write-Host "$Date - Starting Lync services..." 
Get-CsWindowsService | Start-CsWindowsService

# Generates a simple log file upon completion
Write-Output "$Date - Script completed!" > C:\RemoveLyncCerts\rlc_log.txt
