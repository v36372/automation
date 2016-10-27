psql -x -d $1 -c "select * from audit.logged_actions" | awk '/client_query/'>& 2
