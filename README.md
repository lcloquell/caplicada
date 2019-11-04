Trabajo Practico de Computacion Aplicada
----------------------------------------

Consignas:

Configuraciones
VM firewall
El firewall deberá cargar la configuración de iptables al inicio.
Las políticas por defecto de las 3 cadenas de la tabla FILTER sea DROP.
El tráfico desde/hacia la interfaz loopback sea posible (ping a 127.0.0.1).
La única VM que pueda administrar el firewall vía ssh (puerto tcp 22) sea cliente2.
La única VM que pueda navegar por internet sea cliente3.
La única VM de la red 192.168.20.0/24 que pueda ingresar al webserver sea cliente4.
VM webserver
Instalar Java Development Kit.
Obtener el archivo jdk-xxx.tar.gz. Lo podra hacer:
Desde el sitio de Oracle desde cualquier VM con entorno grafico.
Via wget.
Via scp desde otro equipo de la red.
Descarga directa: https://ibm.box.com/s/i1scclgc0j9pa2s3vd9pte0it95v1jg8
Descomprimir el archivo jdk-xxx.tar.gz en el directorio /opt
Crear la variable JAVA_HOME en ~/.bashrc y agregarla a la variable PATH
Verificar la correcta instalación ejecutando el comando #java -version
Instalar Apache Tomcat y deployar la aplicación de ejemplo.
Obtener el archivo apache-tomcat-xxx.tar.gz. Lo podra hacer:
Desde el sitio de Apache desde cualquier VM con entorno grafico.
Descomprimir el archivo apache-tomcat-xxx.tar.gz en el directorio /opt
Obtener la aplicación de ej:
Comando para descargar la aplicación de ejemplo: #wget https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/sample.war
Desplegar la app de ejemplo

Scripting
Se deberá generar un script llamado script-tp-integrador.sh el cual mostrará un menu que tendra las siguientes funcionalidades (Se puede tomar como ejemplo el ejercicio nº 8 de scripting):
Pedir un numero entero y mostrar esa cantidad de elementos de la sucesion de Fibonacci.
Pedir un numero entero y mostrar por pantalla ese numero en forma invertida.
Pedir una cadena de caracteres y evaluar si es palindromo o no.
Pedir el path a un archivo de texto y mostrar por pantalla la cantidad de lineas que tiene.
Pedir el ingreso de 5 numeros enteros y mostrarlos por pantalla en forma ordenada.
Pedir el path a un directorio y mostrar por pantalla cuantos archivos de cada tipo contiene.
Salir (Saludando al usuario que ejecuto el programa).

Archivos a entregar (04-nov-2019)
Debera crear un repositorio en github.com y dentro de este repositorio debera pushear los siguientes archivos:
scripting-tp-integrador.sh
firewall.conf, el cual será testeado utilizando #iptables-restore < firewall.conf en la VM firewall.

Items que se evaluarán
Todas las IPs deben estar ser correctas
#java -version en el webserver -> Debe estar correctamente instalada
#ps -fe en el webserver -> Tomcat debe estar corriendo
Aplicación de ejemplo corriendo en el webserver -> Desde la VM cliente4 se ingresara a http://192.168.10.3:8080/sample
El script debe cumplir con cada uno de los puntos pedidos
#iptables -nL en el firewall -> Debe estar configurado tal como se pide

