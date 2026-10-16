#!/bin/sh
# Собирает index.html (открывается двойным кликом, работает без сервера) из src/island.html
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="ru">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n</head>\n<body>\n'
  cat src/island.html
  printf '\n</body>\n</html>\n'
} > index.html
echo "index.html готов"
