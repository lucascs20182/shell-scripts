#!/bin/bash

#Escreva um script que pergunte que horas são. Dependendo da hora digitada
#pelo usuário imprima a mensagem "Bom dia", "Boa tarde" ou "Boa noite".
#Faça a leitura da hora utilizando o comando “read”. Considere que o usuário
#deverá digitar um valor entre 0 e 23.

#dar permissão de execução ao script
#chmod a+x exercicio1.sh

#roda o script chamando pelo nome
#se o script não estiver em nenhum diretório listado na variável PATH
#se o script estiver na mesma pasta adicione ./ antes do nome
#./exercicio1.sh

echo "olá, $(whoami)! "
echo "que horas são? (digite um valor entre 0 e 23)"
echo -n "R.: "
read inputusuario

#por convenção, adotei que a tarde é o período entre as 12 e as 18
#a noite, entre as 18 e 24
#o dia, então, entre  0 e termina 12

horario=`expr $inputusuario`

if [ $horario -lt 12 ]; then
   echo "bom dia!"
elif [ $horario -gt 11 -a $horario -lt 18 ]; then
   echo "boa tarde!"
else
   echo "boa noite!"
fi

