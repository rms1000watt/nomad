job "Redis-Job" {
  datacenters = ["dc-1"]
  
  group "Redis-Group" {
    task "Redis-Task" {
      driver = "docker"

      config {
        image = "redis"
        privileged = true

        network_mode = "host"

        // port_map = {
        //   redis = 6379
        // }
      }

      // env {
      //   "NOMAD_IP_redis" = "0.0.0.0"
      //   "NOMAD_ADDR_redis" = "0.0.0.0:6379"
      // }

      // resources {
      //   network {
      //     port "redis" {
      //      static = "6379"
      //     }
      //   }
      // }
    }
  }
}
