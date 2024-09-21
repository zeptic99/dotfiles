#!/bin/bash

# Variables
BRIDGE="br0"
INTERFACE="enp9s0"
BRIDGE_IP="192.168.1.101/24"   # IP address for the bridge
INTERFACE_IP="192.168.1.100/24" # IP address for the physical interface
GATEWAY="192.168.1.1"           # Gateway IP

# Create the bridge
echo "Creating bridge: $BRIDGE"
sudo ip link add $BRIDGE type bridge

# Bring up the bridge
echo "Bringing up the bridge: $BRIDGE"
sudo ip link set $BRIDGE up

# Assign IP address to the bridge
echo "Assigning IP $BRIDGE_IP to $BRIDGE"
sudo ip addr add $BRIDGE_IP dev $BRIDGE

# Add the physical interface to the bridge
echo "Adding interface $INTERFACE to bridge $BRIDGE"
sudo ip link set $INTERFACE master $BRIDGE

# Bring up the physical interface
echo "Bringing up the interface: $INTERFACE"
sudo ip link set $INTERFACE up

# Assign IP address to the physical interface
echo "Assigning IP $INTERFACE_IP to $INTERFACE"
sudo ip addr add $INTERFACE_IP dev $INTERFACE

# Set default route for both the bridge and the interface
echo "Setting default route via $GATEWAY for $INTERFACE"
sudo ip route add default via $GATEWAY dev $INTERFACE

echo "Bridge $BRIDGE with interface $INTERFACE created successfully."

