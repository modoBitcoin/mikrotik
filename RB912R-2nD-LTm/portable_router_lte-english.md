Configure a Portable LTE Router 💊 Create your secure connection for mobility ⚡️


**In this test, we are going to test a small portable LTE Router that allows 5V power supply**.

![](https://github.com/modoBitcoin/mikrotik/blob/main/RB912R-2nD-LTm/minilte1.jpg?raw=true)
<br>

In this router we can configure our Internet connection in different ways in addition to being able to configure a VPN service.
All this and much more with a small and quite robust device.
<br>
<br>
#Examples of uses for this router:
<br>
-Connect to the Internet with the LTE modem and establish a tunnel to a VPN service to have encrypted traffic.

-Connect as a client to an Access Point (e.g. a coffee shop or your own cell phone) and share it via ethernet cable.

-Connect to the Internet via LTE modem or Ethernet cable and generate a normal access point or even encrypted with VPN.

-Establish a connection against our home router to be able to access our equipment and avoid cg-nat in some way by being able to access the router and the connected equipment.

-Use the 'Mode' button to change peer and have a different public IP or to load different configurations.

-Use in your IoT project for testing.

-Set up as a second connection in your home so you can have a failover on your router in case of Internet loss.

<br>

<br>

#Specifications
<br>
Product code: MikroTik RB912R-2nD-Ltm with R11e-LTE

Architecture: MIPSBE | CPU: QCA9531 | RAM: 64MB

Number of DC inputs: 3 (DC jack 8-30V, PoE-IN 12-57V, MicroUSB 5V). Max power consumption: 9W

Mobile: 2G,3G,4G (LTE Cat 4) | DualSIM (Only one SIM can operate at a time)

Ethernet: 10/100Mbps one port & Wireless: 2.4Ghz 300Mbps

<br>

![](https://github.com/modoBitcoin/mikrotik/blob/main/RB912R-2nD-LTm/minilte5.jpg?raw=true)

![](https://github.com/modoBitcoin/mikrotik/blob/main/RB912R-2nD-LTm/minilte7.jpg?raw=true)

![](https://github.com/modoBitcoin/mikrotik/blob/main/RB912R-2nD-LTm/minilte9.jpg?raw=true)

<br>
#Test
<br>
<br>
For this test we are going to get a 4GB mobile data SIM from a low cost operator with an approximate cost of 2$. The ISP provides us with a public ip under CG-NAT.
<br>

<br>
List of IPs (public and private):

![](https://github.com/modoBitcoin/mikrotik/blob/main/RB912R-2nD-LTm/ipaddress.png?raw=true)

LTE connection information:

![](https://github.com/modoBitcoin/mikrotik/blob/main/RB912R-2nD-LTm/lte_info.png?raw=true)

Information via ssh:

![](https://github.com/modoBitcoin/mikrotik/blob/main/RB912R-2nD-LTm/lte_info_console.png?raw=true)

Simple indoor speed test (without VPN):

![](https://github.com/modoBitcoin/mikrotik/blob/main/RB912R-2nD-LTm/test_indoor.png)

Examples of traffic on the LTE, ethernet and wireless interface, including router performance:

![](https://github.com/modoBitcoin/mikrotik/blob/main/RB912R-2nD-LTm/traffic_resources.png?raw=true)

It includes integrated tools to improve the LTE connection such as 'LTE Cell Monitor' and 'LTE Scanner'. You also have 'Torch', 'Traceroute', 'Wireless Snooper' among others:

![](https://github.com/modoBitcoin/mikrotik/blob/main/RB912R-2nD-LTm/tools.png?raw=true)

You can modify the processor frequency to increase performance or decrease power consumption with all that this entails.

![](https://github.com/modoBitcoin/mikrotik/blob/main/RB912R-2nD-LTm/cpu_frequency.png?raw=true)
<br>
<br>
Notes: It has a miniPCI-e port and I would like to change the LTE module for a LoRa module to experiment ;).


<br>

Enjoy it!
