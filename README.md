Name: Karthikeya Valisetty
Date: November 5th, 2025
Description: Modelling a DevOps workflow using open source tools (Linux, GitHub, Docker, CI/CD, Nomad, Grafana, Loki, Alloy).

D:\CYBERSECURITY\Cybersecurity_Internship\Springer_Capital\
├── .github/workflows/ci.yml
├── monitoring/
│   ├── docker-compose.yaml
│   ├── alloy-local-config.yaml
│   └── loki_setup.txt
├── nomad/
│   └── hello.nomad
├── Scripts/Python/
│   ├── Dockerfile
│   └── Hello.py
└── README.md

1. Python Scripts
A script(hello.py) that prints “Hello, DevOps!”.
Run command: python hello.py

2. Linux & Scripting Basics
A bash script(sysinfo.sh) that prints the current user, date, disk usage.
Run command: ./sysinfo.sh

3. Docker Basics
A Dockerfile that containerized "Hello.py" and runs the container on startup.
Image build command: docker build -t <image-name>
Container run command: docker run <image-name>:latest

4. CI/CD with GitHub Actions
A GitHub Actions CI pipeline that runs hello.py on every push.
Status Badge: [![Run Python Script](https://github.com/Karthikeya1125/DevOps-Internship/actions/workflows/ci.yml/badge.svg)](https://github.com/Karthikeya1125/DevOps-Internship/actions/workflows/ci.yml)

5. Job Deployment with Nomad
A Nomad job file that runs a docker container.
Initialize command: nomad agent -dev
Validate job file command: nomad job validate nomad/hello.nomad
Run command: nomad job run nomad/hello.nomad
Stop command: nomad job stop hello-python

6. Performance Monitoring using Grafana, Loki and Alloy
An end
# Download docker-compose.yaml
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/grafana/loki/v3.5.7/examples/getting-started/docker-compose.yaml" -OutFile "docker-compose.yaml"

# Download Loki config
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/grafana/loki/v3.5.7/examples/getting-started/loki-config.yaml" -OutFile "loki-config.yaml"

# Download Alloy config
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/grafana/loki/v3.5.7/examples/getting-started/alloy-local-config.yaml" -OutFile "alloy-local-config.yaml"

# Start all services
docker-compose up -d

# Stop all services
docker-compose down

# Stop and remove volumes
docker-compose down -v

# Stop and remove orphaned containers
docker-compose down -v --remove-orphans

# Restart specific service
docker-compose restart alloy
docker-compose restart loki
docker-compose restart grafana

# View logs
docker-compose logs alloy
docker-compose logs loki
docker-compose logs grafana

# Follow logs in real-time
docker-compose logs -f alloy
# View Alloy logs
docker logs alloy
docker logs monitoring-alloy-1

# View Loki logs
docker logs loki
docker logs monitoring-loki-1

# View Grafana logs
docker logs grafana
docker logs monitoring-grafana-1
# Grafana Dashboard
http://localhost:3000

# Loki API
http://localhost:3100

# Alloy HTTP endpoint
http://localhost:12345
