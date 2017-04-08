# docker image pull mflo999/pi-dev

docker container rm -f pi-dev

docker container run \
  --dns 8.8.8.8 \
  --name pi-dev \
  --net dev.net \
  --privileged=true \
  -e DOCKER_PASSWORD="$DOCKER_PASSWORD" \
  -e DOCKER_USERNAME="$DOCKER_USERNAME" \
  -h localhost \
  -it \
  -p 3000:3000 \
  -p 4200:4200 \
  -v "$DEV_DIR":/usr/src/app \
  -v "$HOME"/tmp:/temp \
  -v "$HOME"/.ssh:/root/.ssh \
  -v pi-npm-caches:/root/.npm \
  -v /var/run/docker.sock:/var/run/docker.sock \
  mflo999/pi-dev
