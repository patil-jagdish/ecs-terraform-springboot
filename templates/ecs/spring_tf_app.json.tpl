[
  {
    "name": "spring-tf-app",
    "image": "${app_image}",
    "cpu": ${fargate_cpu},
    "memory": ${fargate_memory},
    "networkMode": "awsvpc",
    "healthCheck": {
        "retries": 10,
        "command": [
          "CMD-SHELL",
          "curl -f http://localhost:8080/ || exit 1"
        ],
        "timeout": 60,
        "interval": 300,
        "startPeriod": 300
      },
    "portMappings": [
      {
        "containerPort": ${app_port},
        "hostPort": ${app_port}
      }
    ]
  }
]
