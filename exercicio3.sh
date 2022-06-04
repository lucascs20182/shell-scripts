#!/bin/bash

#Escreva o mesmo script do exercicio1.sh
#porém recebendo a hora digitada como um parâmetro para o programa

#dar permissão de execução ao script
#chmod a+x exercicio1.sh

#roda o script chamando pelo nome
#se o script não estiver em nenhum diretório listado na variável PATH
#se o script estiver na mesma pasta adicione ./ antes do nome
#./exercicio3.sh

echo "olá, $(whoami)! "

#por convenção, adotei que a tarde é o período entre as 12 e as 18
#a noite, entre as 18 e 24
#o dia, então, entre  0 e termina 12

horario=`date +%H`
horariocasting=`expr $horario`

if [ $horario -lt 12 ]; then
   echo "bom dia!"
elif [ $horario -gt 11 -a $horario -lt 18 ]; then
   echo "boa tarde!"
else
   echo "boa noite!"
fi

echo "o horário atual é: $horario."

