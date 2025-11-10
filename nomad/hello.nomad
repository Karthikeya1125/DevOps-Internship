job "hello-python" {
  datacenters = ["dc1"]
  type = "service"

  group "hello-group" {
    count = 1

    task "hello-task" {
      driver = "docker"

      config {
        image = "python_test:latest"
        command = "python"
        args = ["hello.py"]
      }

      resources {
        cpu    = 100   # 100 MHz
        memory = 128   # 128 MB
      }
    }
  }
}
