$Folder = "C:\Windows\debug"

$reference_net = Import-CliXml $Folder\net.xml
$difference_net = Get-NetTCPConnection

Compare-Object -ReferenceObject $reference_net -DifferenceObject $difference_net -Property LocalAddress,LocalPort,RemoteAddress,RemotePort,State | Where-Object { $_.State -ne "Bound" }