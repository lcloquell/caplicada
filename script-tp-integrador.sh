#/bin/bash

function menu(){
	echo "1- Fibo"
	echo "2- Invierte"
	echo "3- Palindromo"
	echo "4- Cantidad lineas"
	echo "5- Ordenar 5 numeros"
	echo "6- Contar archivos"
	echo "7- Salir"
}

function fibo(){
	x=0
	y=1
	echo "Ingrese el numero:"
	read num
	echo "Serie de fibo:"
	for ((i=0; i<num; i++))
	do
		echo "$x"
		t=$((x+y))
		x=$y
		y=$t
	done
}

function invertido(){
	echo "Ingrese el numero"
	read num
	echo "$num"|rev
}

function palin() {
	largo=0
	i=0
	read -p "Ingrese la cadena: " cadena
	largo=`echo $cadena | wc -m`
	largo=`expr $largo - 1`
	if [ ! $largo -eq 0 ]; then
		med=`expr $largo / 2`
	    	while [ $i -le $med ]; do
        		ca=`echo $cadena|cut -c$i`
        		de=`echo $cadena|cut -c$largo`
	        	if [ $ca != $de ]; then
        	    		echo "No es palindromo"
        		fi
        		i=`expr $i + 1`
	        	largo=`expr $largo - 1`
	    	done
	    	echo "Es palindromo"
	fi
}
function saluda() {
	who=$1
	echo "Bye $who"
	sleep 4
}
echo "Comienzo del script"
clear
menu
while true; do
	read -p "Menu: " numero
	case $numero in
		1) fibo;;
		2) invertido;;
		3) palin;;
		7) saluda `whoami`
			break;; 
	esac
done
echo "Fin del script"
