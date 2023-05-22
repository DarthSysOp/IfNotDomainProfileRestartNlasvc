# PowerShell Script: Domain Profile Service Restart
This script is designed to check the active network firewall profile and restart the Network Location Awareness Service (NlaSvc) if the active profile is not the "Domain" profile. It provides a simple solution to ensure that the NlaSvc is running when the system is not using the domain network profile.

## Prerequisites
PowerShell version 3.0 or later
Administrative privileges (required to restart the service)
### Usage
Open PowerShell.
Copy and paste the script into the PowerShell console or save it in a .ps1 file.
Run the script by executing the saved .ps1 file or running the commands directly in the console.

## Script Explanation
The script begins by retrieving the active network firewall profile using the Get-NetFirewallSetting cmdlet. It selects the ActiveProfile property using the Select-Object -ExpandProperty cmdlet and assigns it to the $ActiveNetFirewallProfile variable.

The script then checks if the value of $ActiveNetFirewallProfile is not equal to "Domain" using the -like operator. If it's not the "Domain" profile, the script proceeds to restart the NlaSvc service.

If the profile is not the "Domain" profile, the script uses the Restart-Service cmdlet to forcefully restart the NlaSvc service and outputs a message indicating that the service has been restarted.

If the profile is the "Domain" profile, the script outputs a message stating that the active NetFirewallProfile is the domain profile.

## Example Output
Active NetFirewallProfile is Domain
Service NlaSvc restarted

## Notes
Ensure that you have administrative privileges to restart services.
It is recommended to test this script in a non-production environment before using it in a production environment.

## Disclaimer
This script is provided as-is without any warranties or guarantees. Use it at your own risk. The author and OpenAI are not responsible for any damage or loss caused by the script.

Feel free to customize and adapt this script to fit your specific requirements. If you have any questions or encounter any issues, please don't hesitate to reach out for support.