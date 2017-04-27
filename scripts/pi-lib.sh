# docker image pull mflo999/pi-lib

docker container rm -f pi-lib

docker container run \
  --log-opt max-size=10m \
  --log-opt max-file=1 \
  --name pi-lib \
  --privileged=true \
  -d \
  -e PI_LIB_HOST="https://raspberrypi" \
  -e PI_LIB_WS="wss://raspberrypi:8080" \
  -h pi-lib \
  -p 80:3000 \
  -p 8080:4000 \
  mflo999/pi-lib bash
