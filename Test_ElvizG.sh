echo "La nueva IP de la interface $eth es $ip"
read
;;
4) clear
echo "..:CONSULTA DE IP:.."
echo "Ingrese la interfaz: "
read eth
echo -e "Su IP es: "
ifconfig $eth | grep "inet"
read
;;
5)clear
echo "..:CAMBIAR MASCARA DE RED:.."
echo "Ingrese la interfaz: "
read eth
echo "Ingrese la nueva mascara:"
read masc
ifconfig $eth netmask $masc
echo "La nueva mascara de la interfaz $eth es $masc"
;;
6) clear 
echo "..:CAPTURAR PAQUETES EN LA RED:.."
echo "Presione Ctrl+c para detener"
read
tcpdump
;;
0) 
echo "FIN"
echo "Precione ENTER para salir"
read
break
;;
*) 
echo "ERROR!!! opcion incorrecta, vuelva a intentarlo"
echo "Precione ENTER para salir"
read
esac
done
