./build.sh

find ./ -depth -name ".AppleDouble" -exec rm -Rf {} \;

echo THIS WONT WORK UNTIL YOU MAKE IMAGE MANDATORY PARAMETER

# echo "Compressing dist ..."
# rm -f ./dist.tar.gz
# tar -zcf /tmp/dist.tar.gz ./
# mv /tmp/dist.tar.gz ./dist.tar.gz
#
# echo "Starting Docker build ..."
# docker build -t mflo999/pi-lib .

# docker push mflo999/pi-lib
