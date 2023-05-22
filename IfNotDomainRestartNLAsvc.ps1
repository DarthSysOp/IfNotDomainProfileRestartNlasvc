$ActiveNetFirewallProfile = Get-NetFirewallSetting -PolicyStore ActiveStore | Select-Object -ExpandProperty ActiveProfile
#Test if its Domain, Private or Public
#If its not Domain profile restart the Service NlaSvc
if (-Not('Domain' -like $ActiveNetFirewallProfile)) {
    Restart-Service NlaSvc -force
    Write-Output "Service NlaSvc restarted"}
else {
    Write-Output "Active NetFirewallProfile is " $ActiveNetFirewallProfile
}