# docker image pull mflo999/pi-led

docker container rm -f pi-led

docker container run \
  --log-opt max-size=10m \
  --log-opt max-file=1 \
  --name pi-led \
  --privileged=true \
  -d \
  -e PI_LED_HOST="https://raspberrypi" \
  -e PI_LED_WS="wss://raspberrypi:8080" \
  -h pi-led \
  -p 80:3001 \
  -p 8080:4001 \
  mflo999/pi-led bash
