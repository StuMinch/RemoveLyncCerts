# RemoveLyncCerts
Due to a limitation in Microsoft Lync Server 2010 I developed this workaround in PowerShell, so that it can be scheduled to run however frequently you desire via Task Scheduler.

There are two ways you can use this workaround:

Option 1:

- Copy the rlc.ps1 script to your server and run it manually.

Option 2:

- Clone the RemoveLyncCerts repo.

- Open Task Scheduler and select "Create Basic Task..."

- Configure the frequency per your requirements.

- Be sure to check the box "Run with highest privileges" during setup.

- Select "Start a program" and point it to the "rlc.ps1" script. 

- Make sure Powershell is set as the default application to run .ps1 files. If it is set to notepad.exe, then Task Scheduler will launch notepad.exe instead of the actual script.

For more information on this issue visit: https://social.technet.microsoft.com/Forums/lync/en-US/89d2edef-b6ca-4594-9901-1fbbfed65ab4/the-server-certificate-store-for-holding-partner-certificates-is-full?forum=ocsedge
