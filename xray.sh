#!/bin/sh
if [ ! -f UUID ]; then
  UUID="df0cb1d0-c46b-4d8b-9d8f-47344b256ecf"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

