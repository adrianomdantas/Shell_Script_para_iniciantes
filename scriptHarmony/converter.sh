#!/bin/bash
 
if ls | grep listaParaHarmony.txt
then
  rm -r listaParaHarmony.txt
fi
for i in $(cat SitesParaBloquear.txt)
do
  echo $i IN CNAME rpz-drop. >> listaParaHarmony.txt
  echo "*.$i IN CNAME rpz-drop." >> listaParaHarmony.txt
done