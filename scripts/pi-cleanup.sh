docker volume ls -qf dangling=true | grep -v pi-* | xargs docker volume rm
docker container rm -v $(docker ps -a -q -f status=exited)
docker image rm $(docker images -f "dangling=true" -q)
sudo find $DEV_DIR/ -depth -name ".AppleDouble" -exec rm -Rf {} \;
echo --- ; docker volume ls
echo --- ; docker container ls -a
echo --- ; docker image ls
