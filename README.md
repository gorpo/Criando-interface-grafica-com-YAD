# Criando-interface-grafica-com-YAD
Criando interface grafica com YAD

Apresentando o Yad

Nesse artigo vou mostrar uma maravilhosa ferramenta para GUI (Interface Gráfica com o Usuário), o Yad, um fork do Zenity que vem com diversas melhorias, dentre elas a possibilidade de fazer formulários, melhorando a interação do usuário com nossos scripts em shell. 
Existem mais opçõesque sempre está disponível o 'comando mãe' de todo usuário de terminal no GNU/Linux, o 'main':

main yad

Se quiser dar uma lembrada rápida nas opções disponíveis para um Dialog específico, é só usar o comando '--help-DIALOG', trocando o DIALOG pelo nome do dialog desejado, veja:

yad --help-list

Ubuntu:

sudo add-apt-repository ppa:webupd8team/y-ppa-manager

$ sudo apt-get update

$ sudo apt-get install yad


Instalação
Baixe a versão mais recente do Yad no link abaixo:

    http://code.google.com/p/yad/downloads


Descompacte:

tar –Jxf arquivo.tar.xz

Instale:

./configure

$ sudo make

$ sudo make install

Pode acontecer dele reclamar de alguma dependência, aqui no meu Debian, reclamou do libgtk2, basta instalar com:

sudo apt-get install libgtk2.0-dev

Após instalar, podemos testar com:
yad

Abaixo exemplo com os tipos de diálogo:

--calendar (calendário)

--color (paleta de cores)

--entry (entrada de dados)

--icons (mostra uma caixa com ícones de atalho para aplicações)

--file (diálogo para selecionar arquivos)

--font (diálogo para seleção de fontes)

--form (aeeeeeee formulários)

--list (diálogo com ítens em lista)

--notification (mostra um ícone da barra de notificação do sistema)

--progress (diálogo de progresso)

--text-info (mostra o conteúdo de um arquivo texto)

--scale (diálogo para seleção de valor, usando uma escala) 

#Exemplos e criaçoes minhas com YAD + Zenity serão aqui postadas.

