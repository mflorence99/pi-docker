# docker image pull mflo999/pi-lib

docker container rm -f pi-lib

docker container run \
  --log-opt max-size=10m \
  --log-opt max-file=1 \
  --name pi-lib \
  --privileged=true \
  -d \
  -e PI_LIB_HOST="https://raspberrypi" \
  -h pi-lib \
  -p 80:3000 \
  mflo999/pi-lib bash
