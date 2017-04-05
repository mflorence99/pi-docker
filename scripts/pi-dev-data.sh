while true; do
  read -p "You are about to destroy all pi-dev-data. Do you want to continue? [yN] " yn
  case $yn in
    [Yy]* )

      docker volume rm pi-npm-caches
      docker volume create \
        --name pi-npm-caches

      break;;
    * ) exit;;
  esac
done
