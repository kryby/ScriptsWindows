$searchPath = '' #directory to search for files
#Regex Numeric Range Generator -> https://3widgets.com/
$RX = "(1220549[89]|122055[0-4][0-9]|1220555[0-6])" #match to look for
$destinationFolder = '' #directory where to copy files matching the search pattern
Get-ChildItem -Path $searchPath | Where-Object{$_.Name -match $RX} | Select Name, DirectoryName,FullName | Select -ExpandProperty FullName | Copy-Item -Destination $destinationFolder