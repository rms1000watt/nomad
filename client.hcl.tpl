log_level  = "DEBUG"
data_dir   = "/nomad/data"
datacenter = "dc-1"

client {
    enabled = true
    servers = ["${NOMAD_SERVER_ADDRESS_1}", "${NOMAD_SERVER_ADDRESS_2}", "${NOMAD_SERVER_ADDRESS_3}"]
}

# This only works because of envsubst in start.sh
ports {
    http = ${NOMAD_CLIENT_HTTP_PORT}
}
