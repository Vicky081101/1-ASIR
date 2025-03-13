#Programa que me pida un numero de usuarios n. A partir de este momento soliciutará n usuarios. Por cada uno de ellos comprobará si el usuario existe en el sistema
Clear-Host

Write-Host "Comprobador de usuarios"
[int]$numero=Read-Host "Elíge un número de usuarios"
$busquedainicial=@()

for ($i = 0; $i -lt $numero; $i++)
{ 
    $busqueda=Read-Host "Dime el nombre de usuario"
    $busquedainicial += ("$busqueda")
}

foreach ($busqueda in $busquedainicial)
{
    if (Get-LocalUser $busqueda -ErrorAction SilentlyContinue) 
    {
        Write-Host "El usuario $busqueda existe"
    }
    else
    {
        Write-Host "El usuario $busqueda no existe"
    }
}
