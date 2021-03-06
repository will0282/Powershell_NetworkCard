# Reference: http://eddiejackson.net/wp/?p=22148

Function Get-IPObject
{
    Get-WmiObject -class Win32_NetworkAdapterConfiguration -Filter "IPEnabled = $true"
}
 
Function Format-netData($objIP)
{
    "IP: " + $objIP.IPAddress[0]
    "Subnet: " + $objIP.IPSubNet[0]
    "GateWay: " + $objIP.DefaultIPGateway[0]
    "DNS: " + $objIP.DNSServerSearchOrder[0]
}
 
Clear-Host
 
$Data = Get-IPObject
 
Format-netData($Data)
