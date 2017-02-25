# automation
scripts to boost working performance


demo abcxyz

`postgres_setup_action_logger.sh` and `postgres_logged_action.sh` are scripts to install a watcher in the Postgresql database. So when there are operations made on a predetermined table, our watcher, which is just another table, would record its query and every other useful information.

So first we have to create a watcher table. Run the script `postgres_setup_action_logger.sh` with 2 parameters:

```
curl https://raw.githubusercontent.com/v36372/automation/master/postgres_setup_action_logger.sh | sudo bash <database> <table>
```

Sorry I'm a bash addict, you can just 

`postgres_setup_action_logger.sh <database> <table>`

After creating the watcher, you can insert, update the table you want to record. Note that the watcher can not save the `SELECT` queries.

Finally, to retrieve the queries you made, run the `postgres_logged_action.sh`:

`postgres_logged_action.sh <database>`
