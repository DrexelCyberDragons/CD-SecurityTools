$Folder = "C:\Windows\debug"

$reference_autoruns = $(Get-Content $Folder\autoruns.txt)
#C:\Windows\debug\autorunsc.exe -nobanner > $Folder\autoruns_diff.txt
#$difference_autoruns = $(Get-Content $Folder\autoruns_diff.txt)
$difference_autoruns = C:\Windows\debug\autorunsc.exe -nobanner

Compare-Object -ReferenceObject $reference_autoruns -DifferenceObject $difference_autoruns