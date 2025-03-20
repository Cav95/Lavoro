echo off
cd "C:\Program Files\Siemens\Solid Edge 2019\Preferences"
del .\SELicense.dat
del .\1-SELicense.dat
pushd \\SRVUT\Transfert\MATTIA CAVINA\Viewer_SolidEdge
copy .\SELicense.dat "C:\Program Files\Siemens\Solid Edge 2019\Preferences"
copy .\1-SELicense.dat "C:\Program Files\Siemens\Solid Edge 2019\Preferences"
popd