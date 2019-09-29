#!/bin/bash
while yad --title='Jogo do Milho' --image='milho.jpg' --image-on-top --button='Jogar':0 --button='Parar':1
do
	export ARQ_TEMP='/tmp/lista_pergunta'
	cd perguntas
	ls *.pergunta > "$ARQ_TEMP"
	cd -
	QTD_PERGUNTAS=$( cat "$ARQ_TEMP" | wc -l)
	[ "${QTD_PERGUNTAS:-0}" -eq 0 ] && yad --title='Aviso' --text='Não há perguntas no diretório [perguntas]' --button='OK':0
	PROXIMA=$[RANDOM%$QTD_PERGUNTAS+1]
	
	PERGUNTA=$(cat "$ARQ_TEMP" | head -n $PROXIMA | tail -n 1)
	
	sed -i /"$PERGUNTA"/d "$ARQ_TEMP"

	./tela_pergunta.sh "perguntas/$PERGUNTA"
done
