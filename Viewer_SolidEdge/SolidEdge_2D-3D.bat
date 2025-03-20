echo off
cd "C:\Program Files\Siemens\Solid Edge 2019\Preferences"
move .\SELicense.dat .\2-SELicense.dat
move .\1-SELicense.dat .\SELicense.dat
move .\2-SELicense.dat .\1-SELicense.dat