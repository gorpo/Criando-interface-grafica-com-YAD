#!/bin/bash
# Cadastro de Palestrante em Evento

yad --form \
   --title='Cadastro de Palestrante' --center \
   --field='Operador do sistema:':RO "$USER" \
   --field='':LBL '' \
   --field='Nome:' '' \
   --field="- [ TIRAR FOTO ] -":BTN "streamer -c /dev/video0 -t 00:00:02 -b 32 -o teste_00.jpeg" \
   --field="- [ VER A FOTO ] -":BTN "yad --image='teste_19.jpeg' --timeout=2 --no-buttons --undecorated --geometry=+0+200" \
   --field='Mini-curriculo:':FL "$HOME" \
   --field='Titulo da Palestra:' '' \
   --field='Resumo:':FL "$HOME" \
   --field="Slides:":FL "$HOME" \
   --date-format="%d/%m/%Y" \
   --field="Dia:":DT "$(date +%d/%m/%Y)" \
   --field="Nr. Sala:":NUM 1!1..14!1 \
   --field="<b>Recursos</b> :":LBL '' \
   --field='DataShow':CHK TRUE --field='Quadro Negro':CHK FALSE --field='Microfone':CHK FALSE --field='Computador':CHK FALSE \
   --field="Nível:":CB "INICIANTE!INTERMEDIÁRIO!AVANÇADO" \
   --field='':LBL '' \
   --field="Salvar arquivos em:":DIR \
   --columns=2 --button='_Sair':1 --button='_Cadastrar':0 >> cad_palestrantes.txt  
