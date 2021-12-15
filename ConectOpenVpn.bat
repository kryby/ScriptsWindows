+@echo off 
"C:\Program Files\OpenVpn\bin\openvpn-gui.exe"
SLEEP 10
"C:\Program Files\OpenVpn\bin\openvpn-gui.exe" --connect <nombre_archivo_configuracion_sin_extension>
SLEEP 30
<Archivo a ejecutar despues de la conexión>