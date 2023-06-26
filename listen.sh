printf "Warning, this will automatically accept any incoming calls.\n\n"
printf "Listening port: "
read LISTEN_PORT
printf "listening...\n"
arecord -f cd - | base64 | ncat -6 --ssl -l $LISTEN_PORT | base64 -d | aplay -f cd -
