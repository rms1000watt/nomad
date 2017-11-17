log_level  = "DEBUG"
data_dir   = "${NOMAD_DATA_DIR}"
datacenter = "dc-1"

server {
    enabled          = true
    bootstrap_expect = 3

    retry_join = ["${NOMAD_SERVER_ADDRESS_1}", "${NOMAD_SERVER_ADDRESS_2}", "${NOMAD_SERVER_ADDRESS_3}"]
}

ports {
  http = ${NOMAD_SERVER_HTTP_PORT}
  rpc  = ${NOMAD_SERVER_RPC_PORT}
  serf = ${NOMAD_SERVER_SERF_PORT}
}
