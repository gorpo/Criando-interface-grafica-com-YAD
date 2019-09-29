#!/bin/bash
# uso do yad com --calendar

# mostra um calendário iniciando com o dia 20/05/2011
# guarda o valor selecionar na variável $DATA

DATA=$(\
        yad --calendar \
        --day=20 \
        --month=5 \
        --year=2011 \
        --date-format=%d\/%m\/%Y \
                --title=Calendario \
                --center \ # disposição do diálogo na tela
)

# mostra um diálogo informando a $DATA selecionada
yad --title="AVISO" \         --text="Você selecionou a data $DATA"
#.EOF
