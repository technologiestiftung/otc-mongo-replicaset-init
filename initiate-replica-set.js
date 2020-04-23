// # from here https://blog.lysender.com/2019/08/mongodb-replicaset-on-docker-environment/
rs.initiate({
  _id: "rs0",
  members: [{ _id: 0, host: "mongo:27017" }],
});
