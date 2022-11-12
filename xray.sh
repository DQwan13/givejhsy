#!/bin/sh
if [ ! -f UUID ]; then
  UUID="fd935f55-74f5-4d2d-9ac6-f4dc51c02832"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

