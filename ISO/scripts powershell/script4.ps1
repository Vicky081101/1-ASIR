#Programa que compruebe si las direcciones IP tienen conexión o no y te muestre eso
Clear-Host
$direcciones=Get-Content -Path C:\Users\Alumno\Desktop\direcciones.txt

foreach ($item in $direcciones)
{
    if (Test-Connection -IPaddress $item -Count 1 -Quiet )
    {
        Write-Host "La ip $item tiene conexión"
    }
    else
    {
        Write-Host "La ip $item no tiene conexión"
    }
}