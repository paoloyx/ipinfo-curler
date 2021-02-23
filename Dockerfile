FROM curlimages/curl
LABEL maintainer="paolo.filippelli@gmail.com"
LABEL description="Sample containers that continuously echoes the public ip of host where it's running"

# https://unix.stackexchange.com/a/81699/37512
CMD ["/bin/sh", "-c", "while true; do POD=$(hostname); IP=$(curl -Ssl ipinfo.io/ip); echo \"Pod: $POD, Public IP address: $IP\"; sleep 1; done"]