Configura un Router LTE portatil para conexiones seguras en movilidad ⚡️

**Test de un pequeño router LTE portátil que permite alimentación a 5V**.

![](https://github.com/modoBitcoin/mikrotik/blob/main/RB912R-2nD-LTm/minilte1.jpg?raw=true)

En este router podemos configurar nuestra conexión a Internet de diferentes maneras además de poder configurar un servicio de VPN.
Todo esto y mucho más con un equipo pequeño y bastante robusto.

**#Ejemplos de usos para este router:**

-Conectarse a Internet con el módem LTE y establecer un túnel a un servicio VPN para tener tráfico cifrado.

-Conectarse como cliente a un punto de acceso (por ejemplo una cafetería o tu propio móvil) y compartirlo por cable ethernet.

-Conectarse a Internet por módem LTE o cable Ethernet y generar un punto de acceso normal o incluso cifrado con VPN.

-Establecer una conexión contra el router de nuestra casa para poder acceder a nuestros equipos y evitar en cierta manera el cg-nat al poder acceder al router y los equipos conectados.

-Utilizar el botón ‘Mode’ para cambiar de peer y tener una IP pública diferente o para cargar diferentes configuraciones.

-Utilizar en tu proyecto de IoT para pruebas.

-Montar como segunda conexión en tu casa y así poder tener un failover en tu router en caso de pérdida de Internet.


**#Especificaciones del equipo**

Referencia: MikroTik RB912R-2nD-Ltm with R11e-LTE

Arquitectura: MIPSBE | CPU: QCA9531 | RAM: 64MB

Entradas DC: 3 (DC jack 8-30V, PoE-IN 12-57V, MicroUSB 5V). Consumo máximo: 9W

Mobile: 2G,3G,4G (LTE Cat 4) | DualSIM (Solo se puede tener 1 conexión a la vez)

Ethernet: 10/100Mbps one port & Wireless: 2.4Ghz 300Mbps

![](https://github.com/modoBitcoin/mikrotik/blob/main/RB912R-2nD-LTm/minilte5.jpg?raw=true)

![](https://github.com/modoBitcoin/mikrotik/blob/main/RB912R-2nD-LTm/minilte7.jpg?raw=true)

![](https://github.com/modoBitcoin/mikrotik/blob/main/RB912R-2nD-LTm/minilte9.jpg?raw=true)

**#Pruebas**

Para esta prueba vamos a conseguir una SIM de 4GB de datos móviles de un operador low cost con un coste aproximado de 2$. El ISP nos proporciona una ip pública bajo CG-NAT.



Listado de IPs (públicas y privadas):

![](https://github.com/modoBitcoin/mikrotik/blob/main/RB912R-2nD-LTm/ipaddress.png?raw=true)

Información de la conexión LTE:

![](https://github.com/modoBitcoin/mikrotik/blob/main/RB912R-2nD-LTm/lte_info.png?raw=true)

Información por ssh:

![](https://github.com/modoBitcoin/mikrotik/blob/main/RB912R-2nD-LTm/lte_info_console.png?raw=true)

Simple test de velocidad en interior (sin VPN):

![](https://github.com/modoBitcoin/mikrotik/blob/main/RB912R-2nD-LTm/test_indoor.png)

Ejemplos de tráfico en la interface LTE, ethernet y wireless, incluido el rendimiento del router:

![](https://github.com/modoBitcoin/mikrotik/blob/main/RB912R-2nD-LTm/traffic_resources.png?raw=true)

Incluye herramientas integradas para mejorar la conexión LTE como LTE Cell Monitor y LTE Scanner. También tienes Torch, Traceroute, Wireless Snooper entre otras:

![](https://github.com/modoBitcoin/mikrotik/blob/main/RB912R-2nD-LTm/tools.png?raw=true)

Puedes modificar la frecuencia del procesador para aumentar rendimiento o disminuir consumo con lo que ello conlleva.

![](https://github.com/modoBitcoin/mikrotik/blob/main/RB912R-2nD-LTm/cpu_frequency.png?raw=true)


Notas: Tiene un puerto miniPCI-e y me gustaría cambiar el módulo LTE por uno LoRa para hacer experimentos ;).
![](https://github.com/modoBitcoin/mikrotik/blob/main/RB912R-2nD-LTm/lora.png?raw=true)

**#Fin del test**

Gracias por leerlo hasta el final ❤️

Y tú, ¿qué router te llevas de viaje?
