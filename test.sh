#!/bin/bash

###### Network 

# Internet connectivity.
ping -c 5 8.8.8.8 > /dev/null || 
    (echo 'ERROR: Failed to connect to internet. Please check your network allows ping, and is connected.')

# That local network is not allowed.
ping -c 5 10.255.108.1 > /dev/null &&
    (echo 'ERROR: The router responded to pings. This means that LAN connectivity is not prevented.')
