URLBOM="http://pdm/FUSION/plm.html?ClientID=8604d71f-eac9-4f70-928a-cb146295152c&locale=it&IISIDX=0&contextID=aphferoacf&AddinCmd=PSM&opencode="
URLCODE="http://pdm/FUSION/plm.html?ClientID=8604d71f-eac9-4f70-928a-cb146295152c&locale=it&IISIDX=0&contextID=skrzzpjtze&AddinCmd=Portal&opencode="
 if [[ $1 == "" && $2 == "" ]]; then
 echo "argomneti sbagliati"
 exit 1
 fi
 for name in $(cat ./$2);do
 if [[ $1 == "BOM" ]] ;then
"/mnt/c/Program Files/Google/Chrome/Application/chrome.exe" ${URLBOM}$(echo ${name}|tr "\r\n" "\n")
fi
if [[ $1 == "CODE" ]] ;then
"/mnt/c/Program Files/Google/Chrome/Application/chrome.exe" ${URLCODE}$(echo ${name}|tr "\r\n" "\n")
fi
done

