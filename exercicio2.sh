#!/bin/bash

#Escreva o mesmo script do exercicio1.sh
#porém recebendo a hora digitada como um parâmetro para o programa

#dar permissão de execução ao script
#chmod a+x exercicio1.sh

#roda o script chamando pelo nome
#se o script não estiver em nenhum diretório listado na variável PATH
#se o script estiver na mesma pasta adicione ./ antes do nome
#./exercicio2.sh 13

echo "olá, $(whoami)! "

if [ $# == 0 ]; then
   echo "Passe o horário atual como parâmetro do programa."
   echo "Digite um valor entre 0 e 23."
   exit 0;
fi

#por convenção, adotei que a tarde é o período entre as 12 e as 18
#a noite, entre as 18 e 24
#o dia, então, entre  0 e termina 12

horario=`expr $1`

if [ $horario -lt 12 ]; then
   echo "bom dia!"
elif [ $horario -gt 11 -a $horario -lt 18 ]; then
   echo "boa tarde!"
else
   echo "boa noite!"
fi

