# Run as
#
#   ./upload.sh [-u CID] [OPTIONS]
#
# If omitted 'CID' defaults to $USER.
# Remaining OPTIONS will be passed on to rsync.

CID="${USER}"
USAGE="USAGE: $0 [-u CID] [OPTIONS]"
if [ "$1" = "-h" ]; then
    echo "$USAGE" >&2
    exit 0
elif [ "$1" = "-u" ]; then
    shift
    if [ -z "$1" ]; then
        echo "Missing CID!" >&2
        echo "$USAGE" >&2
        exit 1
    else
        CID="$1"
    fi
    shift
fi
echo "Using '${CID}' as CID." >&2
RHOST="${CID}@remote11.chalmers.se"
RPATH="/chalmers/groups/security/www/www.cse.chalmers.se"
# DO NOT CHANGE THE -p OR --chmod OPTIONS HERE!!!
# They are required for compatibility with the remote's access control
# settings.
rsync -priv --chmod='Dug=rwx,Fug=rw,o=' --checksum $* \
  _site/ "${RHOST}:${RPATH}"
