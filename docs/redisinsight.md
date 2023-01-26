# docker-compose.yml - RedisInsight

Service running RedisInsight

```bash
docker compose up -d redisinsight
```

## Environment variables

| **Name**                      | **Default**           |
| ----------------------------- | --------------------- |
| REDISINSIGHT_VERSION          | 1.13.1                |
| REDISINSIGHT_CONTAINER_NAME   |                       |
| REDISINSIGHT_RITRUSTEDORIGINS | http://localhost:6379 |
| REDISINSIGHT_RESTART_POLICY   | no                    |
