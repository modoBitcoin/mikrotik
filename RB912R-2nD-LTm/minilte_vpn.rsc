 #modoBitcoin - Test MikroTik RB912R-2nD-LTm with R11e-LTE
 #Mode: WAN: LTE and traffic with WireGuard service

############################################################
#Configure variables!!!

#Wireguard Configuration
:global wireguardPrivateKey "CE72fMYGJtyKb3F3YG0LE5VKl6QsUXwUkvDGhgrrEFk="
:global wireguardPublicKey "qnJrQEf2JiDHMnMWFFxWz8I9NREockylVgYVE95s72s="
:global wireguardEndpoint "193.138.218.82"
:global wireguardEndpointPort "51820"
:global wireguardDNS "10.64.0.1"
:global wireguardIP "10.64.191.121"
############################################################

#Bridge
/interface wireguard
add listen-port=13231 mtu=1420 name=wireguard private-key=$wireguardPrivateKey

#WireGuard
/interface wireguard peers
add allowed-address=0.0.0.0/0 endpoint-address=$wireguardEndpoint endpoint-port=$wireguardEndpointPort interface=wireguard public-key=$wireguardPublicKey

#IP address
/ip address
add address=$wireguardIP interface=wireguard network=$wireguardIP

