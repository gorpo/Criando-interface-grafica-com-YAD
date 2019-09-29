#!/bin/bash
# engine da calculadora ;-)
function calc() {
	ajusta $*
	RESULTADO=$(echo $DADOS | sed 's/x/\\*/g' | xargs expr)
	[ "$RESULTADO" ] && echo "1:$RESULTADO" || echo '1:ERRO AO CALCULAR'
}

function ajusta() {
	CALCULAR=$1
	shift
	for i in $*
	do
		if echo $i | egrep '\+|-|x|/'
		then
			CALCULAR="$CALCULAR $i "
			continue
		fi
		CALCULAR="${CALCULAR}$i"
	done
	export DADOS="$CALCULAR"
}

case "$1" in
'calc') shift
	calc $* ;;

*) ajusta $*
	echo "1:$DADOS" ;;
esac
