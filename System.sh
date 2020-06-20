# Informacion del Sistema
# Script que nos muestra por pantalla la fecha, la hora, la maquina en que
# estamos, nuestro username, nuestro numero identificador de usuario y de
# grupo, quien esta conectado a la maquina y el directorio en que estamos
echo "la fecha de hoy es `date`"
echo "La maquina en que estas trabajando es: $HOST"
echo ""
echo -n "Tu user name es: "
whoami
echo "Los numeros identificadores de usuario y de grupo son:"
id
echo ""
echo "En la maquina estan conectadas las siguientes personas "
who
echo "Estas en el directorio `pwd`"
