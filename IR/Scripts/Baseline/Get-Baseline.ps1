$Folder = "C:\Windows\debug"

Get-Process -includeusername | Export-Clixml $Folder\processes.xml
Get-Service | Export-Clixml $Folder\services.xml
Get-NetTCPConnection | Export-Clixml $Folder\net.xml
C:\Windows\debug\autorunsc.exe -nobanner > $Folder\autoruns.txt