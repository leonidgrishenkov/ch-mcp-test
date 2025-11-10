Поднимаем контейнеры

```sh
docker compose up -d --build
```

Если всё ок, MCP сервер доступен на эндпоинте: http://localhost:4200/mcp

Добавляем mcp в claude code:

```sh
claude mcp add --transport http ch-http http://localhost:4200/mcp
```

