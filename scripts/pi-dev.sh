docker pull mflo999/pi-dev

docker rm -f pi-dev

docker run \
  --dns 8.8.8.8 \
  --name pi-dev \
  --net dev.net \
  -e DOCKER_PASSWORD="$DOCKER_PASSWORD" \
  -e DOCKER_USERNAME="$DOCKER_USERNAME" \
  -h localhost \
  -it \
  -p 55050:5050 \
  -p 55051:5051 \
  -p 55052:5052 \
  -p 55053:5053 \
  -p 55054:5054 \
  -p 55055:5055 \
  -p 55056:5056 \
  -p 55057:5057 \
  -p 55058:5058 \
  -p 55059:5059 \
  -v $(pwd):/usr/src/app \
  -v "$HOME"/tmp:/temp \
  -v $HOME/.ssh:/root/.ssh \
  -v /var/run/docker.sock:/var/run/docker.sock \
  mflo999/pi-dev
