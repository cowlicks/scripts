# /usr/bin/env bash
# A script which uses a SOCKS proxy on my office computer to let me
# circumvent the bullshit wifi bandwidth restrictions at the University
# of Texas... We get 500 MB a week, seriously...

VPS_SSH_PORT=22
LOCAL_PROXY_PORT=6666
USERNAME=blake
PROXY_IP_ADDRESS=128.83.61.137

ssh -p $VPS_SSH_PORT -D $LOCAL_PROXY_PORT $USERNAME@$PROXY_IP_ADDRESS

# In chromium settings do 
# settings > advanced settings > change proxy settings
# to socks proxy add localhost and the LOCAL_PROXY_PORT
