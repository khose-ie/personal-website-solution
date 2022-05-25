
# Backup

```bash
docker-compose -f onedev-compose.yaml down
```

```bash
docker-compose -f onedev-compose.yaml -f onedev-compose-database.yaml run --rm onedev-database-backup
docker-compose -f onedev-compose.yaml -f onedev-compose-onedev.yaml run --rm onedev-onedev-backup
```

```bash
tar -zcf onedev-backup-$(date +date +%Y-%m-%d).tar.gz onedev/
```

# Restore

```bash
docker-compose -f onedev-compose.yaml up -d
# wait about half minute.
docker-compose -f onedev-compose.yaml down
```

```bash
docker-compose -f onedev-compose.yaml -f onedev-compose-onedev.yaml run --rm onedev-onedev-restore
docker-compose -f onedev-compose.yaml -f onedev-compose-database.yaml run --rm onedev-database-restore
```

```bash
docker-compose -f onedev-compose.yaml up -d
```

