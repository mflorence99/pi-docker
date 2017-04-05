pi-cleanup.sh

docker login \
  -p "$DOCKER_PASSWORD" \
  -u "$DOCKER_USERNAME"

if docker network ls | grep "dev\.net" | grep -q "bridge"; then
  echo "Docker network already exists"
else
  docker network create -d bridge dev.net
fi
