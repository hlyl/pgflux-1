SELECT
    datname AS "tag:database",
    pg_stat_get_db_xact_commit(oid) AS "commit",
    pg_stat_get_db_xact_rollback(oid) AS "rollback",
    EXTRACT(EPOCH FROM NOW()) * 1E9 AS "timestamp"
FROM pg_database;
