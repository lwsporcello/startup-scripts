use admin
db.createUser(
  {
    user: "myMongoUser1987",
    pwd: "myMongoPass1987",
    roles: [ { role: "root", db: "admin" }]
  }
)
