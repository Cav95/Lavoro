#mi salvo la mia locazione attuale per esteso
$mypath = pwd
#Prendo il nome della directory che voglio spostare
$mylocation=Split-Path -Leaf (Get-Location)
#Salvo i primi 4 caratteri
$NumCommessa= $mylocation.Substring(0,4)
#Salvo la cartella di destinazione
$destination="C:\Users\mcavina\OneDrive - CEPI s.p.a\Desktop\prova"
#"\\SRVUT\Transfert\Stampe UT"
#giorno di esecuzione
$date=(Get-Date).ToString("yyyyMMdd")
$myname=$env:USERNAME
# Example of if, elseif, and else in PowerShell

if ($NumCommessa -lt 3000) {
$orderFolder="0_2999"
} elseif ($number -lt 3200) {
$orderFolder="3000_3199"
} elseif ($number -lt 3400) {
$orderFolder="3200_3399"
} elseif ($number -lt 3600) {
$orderFolder="3400_3599"
} elseif ($number -lt 3800) {
$orderFolder="3600_3799"
} elseif ($number -lt 4000) {
$orderFolder="3800_3999"
} elseif ($number -lt 4200) {
$orderFolder="4000_4199"
} elseif ($number -lt 4400) {
$orderFolder="4200_4399"
} elseif ($number -lt 4500) {
$orderFolder="4400-4499"
} elseif ($number -lt 4600) {
$orderFolder="4500-4599"
} elseif ($number -lt 4700) {
$orderFolder="4600-4699"
} elseif ($number -lt 4800) {
$orderFolder="4700-4799"
} elseif ($number -lt 4900) {
$orderFolder="4800-4899"
} else {
$orderFolder="4900-4999"
}

#cd "\\srvut\Commesse\$orderFolder\$NumCommessa*"
#$p=pwd
#echo "$p"
Get-ChildItem -Directory | ForEach-Object {
$name=$_.Name
echo $name
Copy-Item -Path "T:\MacroUT\Ordinare stampe.xlsx" -Destination "$mypath\$name\"
if ($name.Contains("Officina")) {
Copy-Item -Path "\\srvut\ut\FogliElettronici-Modelli\Stampe Officina.xlsx" -Destination "$mypath\$name\"
}
}
cd ..
copy -Recurse .\$mylocation "$destination\$mylocation($myname)_$date"