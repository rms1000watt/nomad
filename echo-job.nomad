job "Echo-Job" {
  datacenters = ["dc-1"]

  group "Echo-Group" {
    task "Echo-Task" {
      driver = "docker"

      config {
        image = "hashicorp/http-echo"
        privileged = true
        args = [
          "-listen", "{ GetPrivateIP }:5678",
          "-text", "hello world",
        ]

        port_map = {
          http = 5678
        }
      }

      resources {
        network {
          port "http" {
            static = "5678"
          }
        }
      }
    }
  }
}
