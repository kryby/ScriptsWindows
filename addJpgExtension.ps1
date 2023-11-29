# Ruta de la carpeta que contiene los archivos
$rutaCarpeta = "C:\ENVIOAPC"


# Obtiene la lista de archivos en la carpeta
$archivos = Get-ChildItem -Path $rutaCarpeta

# Recorre cada archivo y renombra añadiendo la extensión ".jpg"
foreach ($archivo in $archivos) {
    # Construye el nuevo nombre de archivo con la extensión ".jpg"
    $nuevoNombre = $archivo.Name + ".jpg"
    
    # Construye la ruta completa para el nuevo nombre
    $nuevaRuta = Join-Path -Path $rutaCarpeta -ChildPath $nuevoNombre
    
    # Renombra el archivo
    Rename-Item -Path $archivo.FullName -NewName $nuevaRuta
}

Write-Host "Proceso completado. Se ha añadido la extensión '.jpg' a todos los archivos en la carpeta."

