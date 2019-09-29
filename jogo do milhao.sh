#!/bin/bash
# Exemplo usando vários recursos gerais do Yad para criação de um possivel jogo
Explicação rápida:

#    --title : define o título do Dialog;
#    --width, --height : largura e altura, respectivamente;
#    --window-icon : ícone exibido na decoração da janela, menu do sistema e painel;
#    --image : adiciona uma imagem ao Dialog;
#    --image-on-top : posicione a imagem do item --image no topo do Dialog;
#    --borders : configura a largura da borda da janela;
#    --sticky : deixa o Dialog visível sobre as demais janelas;
#    --center : inicia o Dialog centralizado na tela;
#    --undecorated : deixa o Dialog sem a decoração (basicamente o título com seus ícones)
#    --timeout : define um tempo em segundos para a janela fechar sozinha, caso não o seja feito manualmente;
#   --timeout-indicator : coloca uma barra que identifica visualmente o --timeout;
#    --text : exibe um texto logo no início do Dialog; 
    
    
    
yad --list \
    --title='Jogo do Milho' --width=500 --height=500 \
    --window-icon='vux.png' --image='milho.jpg' \
    --image-on-top --borders=50 \
    --undecorated --sticky --center --timeout=5 \
    --timeout-indicator='left' \
    --text="Pergunta que vale 1 Milhão de Reais\n\nQuem criou a Fundação para o Software Livre (Free Software Foundation) ?" \
    --button='Cartas':"tela_cartas" --button='Eu pulo':"tela_pulo" --button='Parar':1 --button='Respondo':0 \
    --column='OP':NUM --column='Opções':TEXT \
    1 'Com certeza Linus Torvalds' \
    2 'Claro que foi o Tux' \
    3 'Richard Stallman' \
    4 'Steve Jobs caraio'
