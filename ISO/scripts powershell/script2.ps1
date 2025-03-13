do
{
Write-Host "1. Opción 1"
Write-Host "2. Opción 2"
Write-Host "3. Opción 3"
Write-Host "4.Salir"

$x=Read-Host "Introduce un valor"

switch ($x)
{
    '1' {Write-Host "op1"}
    '2' {Write-Host "op2"}
    '3' {Write-Host "op3"}
    '4' {Write-Host "bye"}
    Default {Write-Host "opción por defecto"}
} 
}



until ($x -eq 4)