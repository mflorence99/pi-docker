mkdir -p .pi-lib/tools
mkdir -p .pi-lib/server

# ts_node can't run TypeScript inside node_modules
# see https://github.com/TypeStrong/ts-node/issues/158
# that led to this convoluted workaround

if [ -d "node_modules/pi-lib/tools" ]; then
  cp -r node_modules/pi-lib/tools .pi-lib/
  ts-node .pi-lib/tools/homify.ts --client
  gulp --gulpfile .pi-lib/tools/vulcanize.ts --source "$(pwd)/client"
else
  ts-node tools/homify.ts --client
  gulp --gulpfile tools/vulcanize.ts --source "$(pwd)/client"
fi

ng serve --host 0.0.0.0
