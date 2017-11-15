log_level  = "DEBUG"
data_dir   = "/nomad/data"
datacenter = "dc-1"

client {
    enabled = true

    # For demo assume we are talking to server1. For production,
    # this should be like "nomad.service.consul:4647" and a system
    # like Consul used for service discovery.
    servers = ["nomad-server-1:4647"]
}

# This only works because of envsubst in start.sh
ports {
    http = ${NOMAD_CLIENT_PORT}
}
