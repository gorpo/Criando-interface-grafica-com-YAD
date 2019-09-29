 #!/bin/bash
# yad com icons
# mostra os ícones das aplicações instaladas no seu sistema
# você pode abrir uma aplicação clicando no ícone correspondente
yad --icons \
        --read-dir="/usr/share/applications" \
                --width="600" \
                --height="500"
#.EOF 
