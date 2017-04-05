function pi-alias-impl() {
  pushd $DEV_DIR > /dev/null
  DIRS=`ls -d pi-*`
  for DIR in $DIRS; do
    BASENAME=${DIR:3}
    alias ~${BASENAME}="cd $DEV_DIR/$DIR"
  done
  popd > /dev/null
}

pi-alias-impl
