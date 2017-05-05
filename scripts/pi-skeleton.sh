# docker image pull mflo999/pi-skeleton

docker container rm -f pi-skeleton

docker container run \
  --log-opt max-size=10m \
  --log-opt max-file=1 \
  --name pi-skeleton \
  --privileged=true \
  -d \
  -e PI_SKELETON_HOST="https://raspberrypi" \
  -e PI_SKELETON_WS="wss://raspberrypi:8080" \
  -h pi-skeleton \
  -p 80:3002 \
  -p 8080:4002 \
  mflo999/pi-skeleton bash
