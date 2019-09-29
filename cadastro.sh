#!/bin/bash
# Cadastro de Palestrante em Evento
#Bom, agora vamos apreciar uma rápida descrição de alguns campos usados no exemplo do cadastro de palestrantes:
#
#    --field='Operador do sistema:':RO "$USER" : Este é um campo tipo somente leitura (Read Only), onde a informação é apresentada e não pode ser alterada;
#    --field='':LBL '' : Campo tipo rótulo (label), útil para descrever o que virá a seguir, quando usado sem descrever o 'texto do campo', é exibido uma linha horizontal no seu lugar;
#    --field='Nome:' '' : Aqui um campo simples, onde não defini seu TIPO, assim ele cria um campo para entrada de texto;
#    --field="- [ VER A FOTO ] -":BTN "yad --image='teste_19.jpeg' --timeout=2 --no-buttons --undecorated --geometry=+0+200" : Nesse usei um campo do tipo BTN, colocando em seu comando a chamada para outro Dialog do Yad para mostrar a foto tirada com o comando do campo anterior, observem o campo --geometry=+0+200, ele permite configurar o tamanho e posicionamento do Dialog, nesse caso estou configurando as posições da tela no pixel 0 na horizontal e 200 na vertical;
#    --field='Mini-curriculo:':FL "$HOME" : Um botão para selecionar arquivo, passei a ele o diretório inicial "$HOME";
#    --date-format="%d/%m/%Y" : Aqui estou configurando o formato da data para o campo do tipo DT (data);
#    --field="Dia:":DT "$(date +%d/%m/%Y)" : Campo do tipo data, permite selecionar uma data assim como o Dialog yad --calendar (informei como conteúdo inicial a data atual);
#    --field="Nr. Sala:":NUM 1!1..14!1 : Campo do tipo numérico, onde podemos informar o valor inicial, uma faixa de valores mínimo e máximo, seguido do valor de cada passo. No caso descrito teremos valor inicial 1, permitindo um valor mínimo de 1 e máximo 14, permitindo passos de 1 em 1;
#    --field='DataShow':CHK TRUE : Um campo do tipo Check Box, onde informamos como valor inicial TRUE para marcado e FALSE para desmarcado;
#    --field="Nível:":CB "INICIANTE!INTERMEDIÁRIO!AVANÇADO" : Aqui um campo tipo Combo Box, onde uma faixa de valor é pré-configurada e permitido ao usuário selecionar um deles, observem que cada item é separado por uma exclamação '!';
#    --field="Salvar arquivos em:":DIR : Permite selecionar um diretório (usei só para mostrar mesmo);
#    --columns=2 : Organiza os campos do formulário em colunas, sendo que os campos são organizados na vertical (observe o que fiz no script Calculadora com Yad). 
    
    
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
