$numero1=Read-Host "Dame un numero: "
$numero2=Read-Host "Dame el segundo numero: "
$numero3=Read-Host "Dame el tercer numero: "

$numero1=[int]$numero1
$numero2=[int]$numero2
$numero3=[int]$numero3

if ($numero1 -gt $numero2 -and $numero1 -gt $numero3 ) {
    Write-Host "$numero1 es el mayor"
}
elseif ($numero2 -gt $numero1 -and $numero2 -gt $numero3) {
    Write-Host "$numero2 es el mayor"
}
elseif ($numero3 -gt $numero1 -and $numero3 -gt $numero2) {
    Write-Host "$numero3 es el mayor"
}
else {
Write-Host "Los tres son iguales"
}