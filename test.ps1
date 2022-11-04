$folder = ".\java\Test"
$refFile = $folder + "\Main.java"
$difFile = $folder + "\Test.java"

$refLines = gc $refFile.Trim('"') | %{$i = 1} {new-object psobject -prop @{Text=$_.Trim(); LineNum=$i}; $i++}
$difLines = gc $difFile.Trim('"') | %{$i = 1} {new-object psobject -prop @{Text=$_.Trim(); LineNum=$i}; $i++}

$Res = Compare-Object $refLines $difLines -Property Text -passThru -caseSensitive | Format-Table @{Name="Side"; Expression={$_.SideIndicator}}, LineNum, Text

Write-Output $Res
