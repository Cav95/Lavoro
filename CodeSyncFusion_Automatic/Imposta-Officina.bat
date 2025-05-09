pushd \\pdm\Fonte dati FUSION\Config
move .\CodeSync.xml .\1-CodeSync.xml
move .\OFF-CodeSync.xml .\CodeSync.xml
popd
"C:\Program Files\RuleDesigner\Fusion\Socket\CodeSync.exe" -I
pushd \\pdm\Fonte dati FUSION\Config
move .\CodeSync.xml .\OFF-CodeSync.xml
move .\1-CodeSync.xml .\CodeSync.xml
popd