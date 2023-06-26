printf "Remote IPV6: "
read IPV6_ADDR
printf "Remote port: "
read REMOTE_PORT
printf "Calling...\n"
arecord -f cd - | base64 | ncat -6 --ssl $IPV6_ADDR $REMOTE_PORT | base64 -d | aplay -f cd -
