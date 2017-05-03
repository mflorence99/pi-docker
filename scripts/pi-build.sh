ts-node tools/homify.ts --client
gulp --gulpfile tools/vulcanize.ts --source "$(pwd)/client"
ng build --prod --aot
