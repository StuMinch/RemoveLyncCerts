$LogDir = "C:\RemoveLyncCerts\rlc_log.txt"
$CertPath = "HKLM:\SOFTWARE\Microsoft\Cryptography\Services\RtcSrv\SystemCertificates\Accepted Certificates\Certificates"

# Takes an output of the certs in the store
Write-Host "Dumping the output of the key store to the log file..." >> $LogDir
Get-ItemProperty -path $CertPath\* -name * >> $LogDir

# Removes all of the Lync certs
Write-Host "Removing the certs..." >> $LogDir
Remove-ItemProperty -path $CertPath\* -name * >> $LogDir

# Restarts the Lync services in the correct order
Write-Host "Stopping Lync services..." >> $LogDir
Get-CsWindowsService | Stop-CsWindowsService

Write-Host "Starting Lync services..." >> $LogDir
Get-CsWindowsService | Start-CsWindowsService

Write-Output "Script completed!" >> $LogDir 
