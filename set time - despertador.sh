#!/bin/bash
# Exemplo útil usando o display

main() {
yad --title='Aviso' --display=':0' \
--image='preferences-system-time' --text='Vai durmir cara!' \
--button='Só mais um pouco':1 --button='Ok':0

case $? in
	1) MIN=$( yad --entry --title='Adiar' --entry-label='Minutos' --entry-text='10' --numeric 0 59 1 --display=':0')
		# se clicar em OK agenda um novo horário usando o at
		[ $? -eq 0 ] &&  TEMPO=$(date --date "now +${MIN%%.*} min" | egrep -o '[0-9]{2}:[0-9]{2}') && at "$TEMPO" -f "$0" && exit 
		# se clicar em CANCEL carrega a tela inicial novamente
		main
	;;
	252|0) exit ;;
esac
}
main
