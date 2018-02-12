$Folder = "C:\Windows\debug"

$reference_service = Import-CliXml $Folder\services.xml
$difference_service = Get-Service

Compare-Object -ReferenceObject $reference_service -DifferenceObject $difference_service -Property Status,Name,DisplayName