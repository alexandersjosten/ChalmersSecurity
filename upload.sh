# Change this if your username is not your Chalmers CID
CID=${USER}
RHOST="${CID}@remote11.chalmers.se"
RPATH="/chalmers/groups/security/www/www.cse.chalmers.se"
rsync -priv --checksum $* \
  _site/ \
  "${RHOST}:${RPATH}"
