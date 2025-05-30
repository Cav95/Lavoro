#Loop through each directory in the current location
Get-ChildItem -Directory | ForEach-Object {
	$name=$_.Name
	Copy-Item -Path "T:\MacroUT\Ordinare stampe.xlsx" -Destination ".\$name\"
if ($name.Contains("Officina")) {
    Copy-Item -Path "\\srvut\ut\FogliElettronici-Modelli\Stampe Officina.xlsx" -Destination ".\$name\"
}	
}
#Prendo il nome della directory che voglio spostare
$mylocation=Split-Path -Leaf (Get-Location)
#Salvo la cartella di destinazione
$destination="\\SRVUT\Transfert\Stampe UT"
#giorno di esecuzione
$date=(Get-Date).ToString("yyyyMMdd")
$myname=$env:USERNAME
cd ..
copy -Recurse .\$mylocation "$destination\$mylocation($myname)_$date"