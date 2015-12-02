$Date = date 
$LogDir = "C:\RemoveLyncCerts\rlc_log.txt"

# Takes an output of the certs in the store
Write-Host "$Date - Dumping the output of the key store to the log file..." >> $LogDir
Get-ItemProperty -path HKLM:\SOFTWARE\Microsoft\Cryptography\Services\RtcSrv\SystemCertificates\Accepted Certificates\Certificates -name * >> $LogDir

# Removes all of the Lync certs
Write-Host "$Date - Removing the certs..." >> $LogDir
Remove-ItemProperty -path HKLM:\SOFTWARE\Microsoft\Cryptography\Services\RtcSrv\SystemCertificates\Accepted Certificates\Certificates -name * >> $LogDir

# Restarts the Lync services in the correct order
Write-Host "$Date - Stopping Lync services..." >> $LogDir
Get-CsWindowsService | Stop-CsWindowsService

Write-Host "$Date - Starting Lync services..." >> $LogDir
Get-CsWindowsService | Start-CsWindowsService

Write-Output "$Date - Script completed!" >> $LogDir 
