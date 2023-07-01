# docker-compose.yml - VSCode

Service with OpenVSCode.

```bash
docker compose up -d vscode
```

**Port:** 3003

## Environment variables

| **Name**                | **Default**       |
| ----------------------- | ----------------- |
| VSCODE_VERSION          | 1.79.2            |
| VSCODE_CONTAINER_NAME   |                   |
| VSCODE_SUDO_PASSWORD    | root              |
| VSCODE_CONNECTION_TOKEN | root              |
| VSCODE_BASE_FOLDER      | ./volumes/vscode  |
| VSCODE_TIMEZONE         | America/Sao_Paulo |
| VSCODE_RESTART_POLICY   | no                |
