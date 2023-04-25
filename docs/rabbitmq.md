# docker-compose.yml - RabbitMQ

Service running RabbitMQ

```bash
docker compose up -d rabbitmq
```

## Environment variables

| **Name**                | **Default**        |
| ----------------------- | ------------------ |
| RABBITMQ_VERSION        | 3.11.13-management |
| RABBITMQ_CONTAINER_NAME |                    |
| RABBITMQ_DEFAULT_USER   | root               |
| RABBITMQ_DEFAULT_PASS   | root               |
| RABBITMQ_RESTART_POLICY | no                 |
