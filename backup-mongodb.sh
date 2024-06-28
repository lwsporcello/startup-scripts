mongodump --db go-mongodb --out /opt/
mongodump --db admin --out /opt/
mongodump --db config --out /opt/
mongodump --db local --out /opt/

aws s3 sync /opt/go-mongodb  "s3://mongodb-backup-sporcello/go-mongodb"
aws s3 sync /opt/admin  "s3://mongodb-backup-sporcello/admin"
aws s3 sync /opt/config  "s3://mongodb-backup-sporcello/config"
aws s3 sync /opt/local  "s3://mongodb-backup-sporcello/local"
