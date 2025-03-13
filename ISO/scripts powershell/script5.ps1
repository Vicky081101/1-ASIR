<#El script debe solicitar un número de usuarios a introducir. 
Una vez que tengamos ese número debe solicitar tantos nombres de usuario como el número que hayamos indicado. Si
se ha introducido 0, solo debe mostrar los usuarios que ya existen en el sistema.
Los nombres de usuario han de almacenarse en un fichero que se llame usuarios.txt.
Este fichero ha de estar en la siguiente url "c:\scripts\usuarios.txt 
Si el fichero ya existiera, debo añadir esos nombres al ya existente. 
Con el fichero ya terminado, he de comprobar uno a uno que existe los usuarios, y si no existe 
tendrá que crearlo.
La clave por defecto de cada usuario será "alumno.12345"
Mostrará por pantalla los usuarios que ya existen y los que se han creado nuevos.#>

[int]$usuarios= Read-Host "Introduceme un número de usuarios "
$ruta= "C:\scripts\usuarios.txt"

if ( $usuarios -eq 0)
{
    Get-LocalUser 
    exit
}

if ((Test-Path -Path $ruta)) {
    Remove-Item -Path $ruta
}

for ($i = 0; $i -lt $usuarios; $i++)
{ 
    New-Item -ItemType File -Path $ruta -ErrorAction SilentlyContinue
    $nombres=Read-Host "Dime el nombre de usuario " 
    Add-content -Path $ruta -Value $nombres
}

$contenido=Get-Content -Path $ruta

foreach ($nombres in $contenido)
{
    if (Get-LocalUser -Name $nombres -ErrorAction SilentlyContinue)
    {
        Write-Host "El usuario $nombres ya existe"
    }
    else
    {
        New-LocalUser -Name $nombres -Password (ConvertTo-SecureString "alumno.12345" -AsPlainText -Force)
        Write-Host "El usuario $nombres ha sido creado"
    }
}








