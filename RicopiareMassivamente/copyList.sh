echo $1 $2
if [[ $1 == "" || $2 == "" ]] ; then
echo "mancano argomenti"
exit 1
fi
if [[ ! -e $1 ]] ; then
echo "manca file da copiare"
exit 1
fi
if [[ ! -e $2 ]] ; then
echo "manca file con elenco nomi destinazione"
exit 1
fi
while read name ; do
cp "$1" $(echo ${name} | tr -d "\\r").txt;
done < $2