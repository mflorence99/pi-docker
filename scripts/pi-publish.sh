version=${1:-patch}

set -e

mversion -m "Updated to version %s" "$version"
git push origin master --tags

pushd client/app/lib
gulp
pushd dist
npm publish
popd
popd
