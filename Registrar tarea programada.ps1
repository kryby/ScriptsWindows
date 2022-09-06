$Argument = '' # Parametros del programa a ejecutar
$Action = New-ScheduledTaskAction -Execute 'Path del programa a ejecutar' -Argument $Argument

$Trigger = New-ScheduledTaskTrigger -Daily -At 5am

Register-ScheduledTask -Action $Action -Trigger $Trigger -TaskName "Nombre tarea" -Description "Descripcion"