CREATE USER mcp_user IDENTIFIED WITH plaintext_password BY 'qwerty123';

GRANT SELECT ON default.* TO mcp_user;
