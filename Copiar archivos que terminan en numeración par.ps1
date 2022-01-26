Get-ChildItem "Directorio origen" |
Where-Object {$_.Name.EndsWith("0.pdf") -or $_.Name.EndsWith("2.pdf") -or $_.Name.EndsWith("4.pdf") -or $_.Name.EndsWith("6.pdf") -or $_.Name.EndsWith("8.pdf")} |
Select -ExpandProperty FullName |
Copy-Item -Destination Directorio destino