#!/bin/bash

###### Network 

# Internet connectivity.
ping -c 5 8.8.8.8 > /dev/null || 
    (echo 'ERROR: Failed to connect to internet. Please check your network allows ping, and is connected.')

# Test DNS
host www.craigcheetham.com > /dev/null || 
    (echo 'ERROR: Failed to use DNS to known working website.')


# That local network is not allowed.
ping -c 5 10.255.108.1 > /dev/null &&
    (echo 'ERROR: The router responded to pings. This means that LAN connectivity is not prevented.')

# Prevent key directories on filesystem from being accessed.
ls / &> /dev/null && 
    (echo 'ERROR: Filesystem read from / was allowed.')