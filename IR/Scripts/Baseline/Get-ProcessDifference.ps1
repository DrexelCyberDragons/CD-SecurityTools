$Folder = "C:\Windows\debug"

$reference_process = Import-CliXml $Folder\processes.xml
$difference_process = Get-Process -includeusername

Compare-Object -ReferenceObject $reference_process -DifferenceObject $difference_process -Property Id,ProcessName,Path,UserName