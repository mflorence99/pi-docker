mkdir -p .pi-lib/tools
mkdir -p .pi-lib/server

# ts_node can't run TypeScript inside node_modules
# see https://github.com/TypeStrong/ts-node/issues/158
# that led to this convoluted workaround

if [ -d "node_modules/pi-lib/tools" ]; then
  cp -r node_modules/pi-lib/tools .pi-lib/
  ts-node .pi-lib/tools/homify.ts --server
else
  ts-node tools/homify.ts --server
fi

# awkward because of my poor bash confidence!

if [ -d "node_modules/pi-lib/server" ]; then
  if [ ! -L "node_modules/pi-lib/server" ]; then
    mv node_modules/pi-lib/server/* .pi-lib/server/
    pushd node_modules/pi-lib
    rm -rf server/
    ln -sf ../../.pi-lib/server server
    popd
  fi
fi

ts-node server/server.ts
