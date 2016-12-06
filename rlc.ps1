# Imports the Lync specific Powershell modules
Import-Module 'C:\Program Files\Common Files\Microsoft Lync Server 2010\Modules\Lync\Lync.psd1'

$Date = date
$LogDir = "C:\RemoveLyncCerts\rlc_log.txt"
$CertPath = "HKLM:\SOFTWARE\Microsoft\Cryptography\Services\RtcSrv\SystemCertificates\Accepted Certificates\Certificates"

# Removes all of the Lync certs
Write-Host "Removing the certs..."
Remove-ItemProperty -path $CertPath\* -name *

# Restarts the Lync services in the correct order
Write-Host "Stopping Lync services..."
Get-CsWindowsService | Stop-CsWindowsService

Write-Host "Starting Lync services..."
Get-CsWindowsService | Start-CsWindowsService

Write-Output "Script completed on $Date" >> $LogDir 
