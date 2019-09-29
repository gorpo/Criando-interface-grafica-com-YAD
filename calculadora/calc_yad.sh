#!/bin/bash
# Calculadora em Shell com Yad
yad --form --title='Calc Shell + Yad' --columns=5 --width=400 \
--field='' '' \
--field='':LBL '' --field='':LBL '' --field='':LBL '' --field=7:BTN "@./calc.sh %1 7" --field=4:BTN "@./calc.sh %1 4" --field=1:BTN "@./calc.sh %1 1" \
--field=0:BTN "@./calc.sh %1 0" --field=8:BTN "@./calc.sh %1 8" --field=5:BTN "@./calc.sh %1 5" --field=2:BTN "@./calc.sh %1 2" \
--field='+':BTN "@./calc.sh %1 +" --field=9:BTN "@./calc.sh %1 9" --field=6:BTN "@./calc.sh %1 6" --field=3:BTN "@./calc.sh %1 3" \
--field='-':BTN "@./calc.sh %1 -" --field='/':BTN "@./calc.sh %1 /" --field='x':BTN "@./calc.sh %1 x" --field='C':BTN "@echo 1:" \
--field='=':BTN "@./calc.sh calc %1" --no-buttons
