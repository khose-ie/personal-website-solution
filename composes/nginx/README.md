
# Backup

```bash
docker-compose -f nginx.yaml down
```

```bash
docker-compose -f nginx.yaml -f nginx-nginx.yaml run --rm nginx-nginx-backup
```

```bash
tar -zcf nginx-backup-$(date +date +%Y-%m-%d).tar.gz nginx/
```

# Restore

```bash
docker-compose -f nginx.yaml up -d
# wait about half minute.
docker-compose -f nginx.yaml down
```

```bash
docker-compose -f nginx.yaml -f nginx-nginx.yaml run --rm nginx-nginx-restore
```

```bash
docker-compose -f nginx.yaml up -d
```

