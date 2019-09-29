#!/bin/bash
#Neste exemplo introduzimos as seguintes opções do '--file':
#    --filename="/tmp/eventos.txt" : Pré-configura um nome de arquivo para ser salvo;
#    --save : Ativa o salvamento de arquivos para o --file;
#    --confirm-overwrite : Apresenta um Dialog de confirmação para sobrescrever arquivo, caso seja fornecido um nome existente. 
#Poderíamos ter usado:
#    --directory : Permite selecionar apenas diretórios; 
    
    
cp eventos.txt /tmp/eventos.txt

while CONTEUDO=$(yad --text-info --title="Agenda de Eventos" \
		--width=500 --height=500 \
		--filename="/tmp/eventos.txt" \
		--editable \
		--fore="#0000FF" --back="#AAFFAA" --fontname="Ubuntu Mono" \
		--justify="fill" --margins="20" \
		--show-uri \
		--button='Sair':1 --button='Salvar':0)
do
	echo "$CONTEUDO" > /tmp/eventos.txt
	NOVO_LOCAL=$(yad --file --width='400' --height='350' --filename="/tmp/eventos.txt" --save --confirm-overwrite)
	cp "$NOVO_LOCAL" eventos.txt
done

killall yad
./agenda.sh
