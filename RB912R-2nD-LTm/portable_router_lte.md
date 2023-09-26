En este test vamos a probar un pequeño Router LTE que permite alimentación a 5V y en el que podemos configurar una conexión a Internet de diferentes maneras, además de poder configurar nuestro servicio VPN. Esto nos permite tener un router en movilidad muy configurable.

Ejemplos de modalidades que se me ocurren:

Conectarse a Internet con el módem LTE y establecer un túnel a un servicio VPN para tener tráfico cifrado.
Conectarse como cliente a un punto de acceso (por ejemplo una cafetería o tu propio móvil) y compartirlo por cable ethernet.
Conectarse a Internet por módem LTE o cable Ethernet y generar un punto de acceso normal o incluso cifrado con VPN.
Establecer una conexión contra el router de nuestra casa para poder acceder a nuestros equipos y evitar en cierta manera el cg-nat al poder acceder al router y los equipos conectados.
Utilizar el botón ‘Mode’ para cambiar de peer y tener una IP pública diferente o para cargar diferentes configuraciones.
Utilizar la placa tu propio proyecto de IoT
Montar como segunda conexión en tu casa y así poder tener un failover en tu router en caso de pérdida de Internet.

…

Además, creo que es posible cambiar el módulo LTE y utilizar por ejemplo un módulo LoRa para otro experimento ya que tiene un puerto MiniPCI-e



Características del equipo:

Product code: MikroTik RB912R-2nD-Ltm with R11e-LTE
Architecture: MIPSBE
CPU: QCA9531
RAM: 64MB
Number of DC inputs: 3 (DC jack 8-30V, PoE-IN 12-57V, MicroUSB 5V).
Max power consumption: 9W
Mobile: 2G,3G,4G (LTE Cat 4) | DualSIM (Only one SIM can operate at a time)
Wireless: 2.4Ghz 300Mbps
Ethernet: 10/100Mbps one port


#Material utilizado:

Para esta prueba vamos a conseguir una SIM de 4GB de datos móviles con un coste aproximado de 2$. El ISP nos proporciona una ip pública bajo CG-NAT.
Nos vamos a conectar por WinBox al router y partiremos de que nuestro router tiene la versión de RouterOS7 si queremos configurar Wireguard.

Información de la conexión LTE:
![](https://github.com/modoBitcoin/mikrotik/blob/main/RB912R-2nD-LTm/lte_info.png?raw=true)


Puedes modificar la frecuencia del procesador para aumentar rendimiento o disminuir consumo con lo que ello conlleva.

![](https://github.com/modoBitcoin/mikrotik/blob/main/RB912R-2nD-LTm/cpu_frequency.png?raw=true)


















Ejemplo de estado de la interface LTE:

Herramientas integradas como ‘LTE Cell Monitor’ y ‘LTE Scanner’
