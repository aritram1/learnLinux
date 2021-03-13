# List of most used network relatd commands in Bash

# netstat : netstat provides all connections to the host. It is easy to use the flags where 
# -a (all connections), 
# -i (only incoming connections), 
# -s (only sending connections)
# Additionally a second flag shows more specific results.
# -at/-au : shows all tcp/udp connections 
# -st/-su : shows only sending connections
# -it/-iu : shows only incoming connections
netstat -a
netstat -at
netstat -au
netstat -it
netstat -su
# -------------------------------------------------------------------------------------

netstat -ap | grep :<port>
