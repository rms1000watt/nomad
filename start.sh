#!/usr/local/bin/dumb-init /bin/sh

set -e

# If the data or config dirs are bind mounted then chown them.
# Note: This checks for root ownership as that's the most common case.
if [ "$(stat -c %u /nomad/data)" != "$(id -u root)" ]; then
    chown root:root /etc/nomad
fi

# If requested, set the capability to bind to privileged ports before
# we drop to the non-root user. Note that this doesn't work with all
# storage drivers (it won't work with AUFS).
if [ ! -z ${NOMAD+x} ]; then
    setcap "cap_net_bind_service=+ep" /bin/nomad
fi

set -- gosu root "$@"

# Do Environment variable replacements for the config
for f in /*.tpl; do /usr/bin/envsubst < $f > $(basename $f .tpl); done

exec "$@"
