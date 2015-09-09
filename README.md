# RemoveLyncCerts
Due to a bug in Microsoft Lync Server 2010 I developed this workaround in Powershell, so that it can be scheduled to run however frequently you desire via Task Scheduler.

In order to use this workaround you can do one of the following:

1. Run the rlc.ps1 script from within the Lync Management Shell

OR

2. Clone the repo directly to your C:\ drive or create the "RemoveLyncCerts" directory and copy the files over.

3. Create a shortcut within the "RemoveLyncCerts" directory using the contents of "rlc_ts" for the target location.

4. Open Task Scheduler and use the "Create Basic Task" option.

5. Set the schedule based on your requirements.

6. Point Task Scheduler to the shortcut that you had created in step #3.

The shortcut calls the Lync Management Shell and executes the script "rlc.ps1". 

For more information on the bug visit: https://social.technet.microsoft.com/Forums/lync/en-US/89d2edef-b6ca-4594-9901-1fbbfed65ab4/the-server-certificate-store-for-holding-partner-certificates-is-full?forum=ocsedge
