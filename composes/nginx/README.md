
# Backup

```bash
docker-compose -f nginx-compose.yaml down
```

```bash
docker-compose -f nginx-compose.yaml -f nginx-compose-nginx.yaml run --rm nginx-nginx-backup
```

```bash
tar -zcf nginx-backup-$(date +date +%Y-%m-%d).tar.gz nginx/
```

# Restore

```bash
docker-compose -f nginx-compose.yaml up -d
# wait about half minute.
docker-compose -f nginx-compose.yaml down
```

```bash
docker-compose -f nginx-compose.yaml -f nginx-compose-nginx.yaml run --rm nginx-nginx-restore
```

```bash
docker-compose -f nginx-compose.yaml up -d
```

