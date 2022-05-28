
# Backup

```bash
docker-compose -f onedev.yaml down
```

```bash
docker-compose -f onedev.yaml -f onedev-database.yaml run --rm onedev-database-backup
docker-compose -f onedev.yaml -f onedev-onedev.yaml run --rm onedev-onedev-backup
```

```bash
tar -zcf onedev-backup-$(date +date +%Y-%m-%d).tar.gz onedev/
```

# Restore

```bash
docker-compose -f onedev.yaml up -d
# wait about half minute.
docker-compose -f onedev.yaml down
```

```bash
docker-compose -f onedev.yaml -f onedev-onedev.yaml run --rm onedev-onedev-restore
docker-compose -f onedev.yaml -f onedev-database.yaml run --rm onedev-database-restore
```

```bash
docker-compose -f onedev.yaml up -d
```

