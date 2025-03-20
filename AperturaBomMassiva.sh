URL="http://pdm/FUSION/plm.html?ClientID=8604d71f-eac9-4f70-928a-cb146295152c&locale=it&IISIDX=0&contextID=aphferoacf&AddinCmd=PSM&opencode="
 for name in $(cat ./$1);do
"/mnt/c/Program Files/Google/Chrome/Application/chrome.exe" ${URL}$(echo ${name}|tr "\r\n" "\n")
done

