#!/bin/bash

if [ $# -lt 2 ]; then
   echo "Forneça uma extensão de entrada e uma extensão de saída como parâmetro do script"
   echo "ex.: ./exercicio4.sh bin pdf"
   exit 0;
fi

for nome_de_arquivo in *.$1
do
   nome_sem_extensao=$(basename "$nome_de_arquivo" .$1)
   mv "$nome_de_arquivo" "$nome_sem_extensao.$2"
done

