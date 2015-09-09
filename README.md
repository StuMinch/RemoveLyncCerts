# RemoveLyncCerts
Due to a limitation in Microsoft Lync Server 2010 I developed this workaround in PowerShell, so that it can be scheduled to run however frequently you desire via Task Scheduler.

There are two ways you can use this workaround:

1. Copy the rlc.ps1 script to your server and run it manually.

2. Clone the RemoveLyncCerts repo to the C:\ drive of your Edge server (or to your local desktop and copy the files manually to the Lync Edge server).

3. Open Task Scheduler and select "Create Basic Task..."

4. Configure the frequency per your requirements.

5. Select "Start a program" and point it to the "RemoveLyncCerts" shortcut file. 

For more information on this issue visit: https://social.technet.microsoft.com/Forums/lync/en-US/89d2edef-b6ca-4594-9901-1fbbfed65ab4/the-server-certificate-store-for-holding-partner-certificates-is-full?forum=ocsedge
