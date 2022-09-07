$Argument = 'g:\EliminarArchivosTemporales.ps1'
$Action = New-ScheduledTaskAction -Execute 'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe' -Argument $Argument

$Trigger = New-ScheduledTaskTrigger -Daily -At 6pm

Register-ScheduledTask -Action $Action -Trigger $Trigger -TaskName "LimpiarTemp" -Description "Vaciado de la carpeta Temp"