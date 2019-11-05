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
function saluda() {
	who=$1
	echo "Bye $who"
	sleep 4
}
echo "Comienzo del script"
menu
while true; do
	read -p "Menu: " numero
	case $numero in
		1) fibo;;
		7) saluda `whoami`
			break;; 
	esac
done
echo "Fin del script"
