#!/bin/bash
#captura próxima pergunta
killall yad
QTD_PERGUNTAS=$( cat "$ARQ_TEMP" | wc -l)

[ "${QTD_PERGUNTAS:-0}" -eq 0 ] && yad --title='Aviso' --text='As perguntas acabaram-se' --button='OK':0 && exit

PROXIMA=$[RANDOM%$QTD_PERGUNTAS+1]

PERGUNTA=$(cat "$ARQ_TEMP" | head -n $PROXIMA | tail -n 1)

sed -i /"$PERGUNTA"/d "$ARQ_TEMP"

yad --image='pular.jpg' --image-on-top --timeout=2 --undecorated --no-buttons

./tela_pergunta.sh "perguntas/$PERGUNTA"



