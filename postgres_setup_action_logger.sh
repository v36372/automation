curl https://raw.githubusercontent.com/2ndQuadrant/audit-trigger/master/audit.sql | psql $1
psql -d $1 -c "SELECT audit.audit_table('$2');"
