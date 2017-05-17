container="pi-mac"
running=$(docker inspect --format='{{ .State.Running }}' $container 2> /dev/null)

if [ "$running" != "true" ]; then

  # docker image pull mflo999/"$container"

  docker container rm -f "$container"

  docker container run \
    --dns 8.8.8.8 \
    --name "$container" \
    --net dev.net \
    --privileged=true \
    -e DOCKER_PASSWORD="$DOCKER_PASSWORD" \
    -e DOCKER_USERNAME="$DOCKER_USERNAME" \
    -e NPM_TOKEN="$NPM_TOKEN" \
    -e PI_LED_HOST="$PI_LED_HOST" \
    -e PI_LED_WS="$PI_LED_WS" \
    -e PI_LIB_HOST="$PI_LIB_HOST" \
    -e PI_SKELETON_HOST="$PI_SKELETON_HOST" \
    -e PI_SKELETON_WS="$PI_SKELETON_WS" \
    -h localhost \
    -it \
    -p 3000-3010:3000-3010 \
    -p 4000-4010:4000-4010 \
    -p 4200:4200 \
    -v "$HOME"/mflorence99:/usr/src/app \
    -v "$HOME"/tmp:/temp \
    -v "$HOME"/.ssh:/root/.ssh-orig \
    -v "$HOME"/.gitconfig:/root/.gitconfig \
    -v "$HOME"/.netrc:/root/.netrc \
    -v pi-bower-caches:/root/.bower \
    -v pi-npm-caches:/root/.npm \
    -v /var/run/docker.sock:/var/run/docker.sock \
    mflo999/"$container"

else

  docker exec -it "$container" bash

fi
