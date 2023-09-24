# modoBitcoin - Test MikroTik hap ac2 with mullvad (V1)

############################################################
#Configure variables!!!

#Wireguard Configuration
:global wireguardPrivateKey "private key"
:global wireguardPublicKey "public key"
:global wireguardEndpoint "Endpoint IP"
:global wireguardEndpointPort "Endpoint port"
:global wireguardDNS "DNS"
:global wireguardIP "IP Address"
#Your WAN configuration
:global ipWAN "192.168.10.100/24"
:global ipWANnetwork "192.168.10.0"
:global ipWANgateway "192.168.10.1"
#Your new LAN configuration
:global ipLAN "192.168.99.1/24"
:global ipLANnetwork "192.168.99.0"
:global dhcpserveraddress "192.168.99.0/24"
:global dhcpdns "192.168.99.1"
:global dhcpgateway "192.168.99.1"
:global dhcppoolrange "192.168.99.100-192.168.99.200"
:global wifiSSID2ghz "ssidVPN2Ghz"
:global wifiSSID5ghz "ssidVPN5Ghz"
:global wifiPassword "Password1234"
:global routerName "RouterVPN"
############################################################

#Bridge
/interface bridge
add name=bridge1
/interface wireguard
add listen-port=13231 mtu=1420 name=wireguard private-key=$wireguardPrivateKey

#Interfaces (example: wan=ether1 lan=ether2,3,4,5 and wifi 2.4ghz y 5ghz)
/interface bridge port
add bridge=bridge1 interface=ether2
add bridge=bridge1 interface=ether3
add bridge=bridge1 interface=ether4
add bridge=bridge1 interface=wlan1
add bridge=bridge1 interface=wlan2
add bridge=bridge1 interface=ether5

#DHCP
/ip pool
add name=dhcp_pool ranges=$dhcppoolrange
/ip dhcp-server
add address-pool=dhcp_pool interface=bridge1 name=dhcp_server
/ip dhcp-server network
add address=$dhcpserveraddress dns-server=$dhcpgateway gateway=$dhcpgateway

#WireGuard
/interface wireguard peers
add allowed-address=0.0.0.0/0 endpoint-address=$wireguardEndpoint endpoint-port=$wireguardEndpointPort interface=wireguard public-key=$wireguardPublicKey

#IP address
/ip address
add address=$ipLAN interface=bridge1 network=$ipLANnetwork
add address=$ipWAN interface=ether1 network=$ipWANnetwork
add address=$wireguardIP interface=wireguard network=$wireguardIP

#DNS
/ip dns set allow-remote-requests=yes servers=$wireguardDNS

#Firewall
/ip firewall nat
add action=masquerade chain=srcnat

#Routes
/ip route
add disabled=no distance=1 dst-address=0.0.0.0/0 gateway=wireguard pref-src="" routing-table=main scope=30 suppress-hw-offload=no target-scope=10
add disabled=no distance=1 dst-address=$wireguardEndpoint gateway=$ipWANgateway pref-src="" routing-table=main scope=30 suppress-hw-offload=no target-scope=10

#Others Disable services, only WinBox
/ip service
set telnet disabled=yes
set ftp disabled=yes
set www disabled=yes
set ssh disabled=yes
set api disabled=yes
set api-ssl disabled=yes

/system identity set name=$routerName

#Wireless | Example with WPA2 PSK, 2.4Ghz and 5Ghz with same password
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
add authentication-types=wpa2-psk eap-methods="" mode=dynamic-keys \
    name=profile1 supplicant-identity="" wpa2-pre-shared-key=$wifiPassword

/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
add authentication-types=wpa2-psk eap-methods="" mode=dynamic-keys \
    name=profile1 supplicant-identity="" wpa2-pre-shared-key=wifiPassword

/interface wireless
set [ find default-name=wlan1 ] band=2ghz-b/g/n channel-width=20/40mhz-eC \
    disabled=no frequency=auto mode=ap-bridge \
    security-profile=profile1 ssid=$wifiSSID5ghz wireless-protocol=802.11 wps-mode=\
    disabled frequency-mode=regulatory-domain distance=indoors
set [ find default-name=wlan2 ] band=5ghz-a/n/ac channel-width=20/40/80mhz-eeCe \
    disabled=no frequency=auto mode=ap-bridge \
    security-profile=profile1 ssid=$wifiSSID2ghz wireless-protocol=802.11 \
    wps-mode=disabled frequency-mode=regulatory-domain distance=indoors
