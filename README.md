Поднимаем клик

```sh
docker compose up -d
```

Запускаем MCP

```sh
uv run mcp-clickhouse
```

Проверяем MCP

```sh
curl http://localhost:4200/health
```

Если всё ок, значит он подключился к клику. Сам сервер доступен на эндпоинте: http://localhost:4200/mcp

Добавляем mcp в claude code:

```sh
claude mcp add --transport http ch-http http://localhost:4200/mcp
```

# Notes

мне не понравилось что зависимостей очень много и большинство из них не то чтобы прям обязательные. Venv весит ~0.4GB.
