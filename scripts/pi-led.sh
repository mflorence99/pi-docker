# docker image pull mflo999/pi-led

docker container rm -f pi-led

docker container run \
  --log-opt max-size=10m \
  --log-opt max-file=1 \
  --name pi-led \
  --privileged=true \
  -d \
  -e PI_LED_HOST="$PI_LED_HOST" \
  -e PI_LED_WS="$PI_LED_WS" \
  -h pi-led \
  -p 3000:3000 \
  -p 4000:4000 \
  mflo999/pi-led bash
