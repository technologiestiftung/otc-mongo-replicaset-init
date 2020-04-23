#!/usr/bin/env sh
# from here https://blog.lysender.com/2019/08/mongodb-replicaset-on-docker-environment/
echo "USER: ${MONGO_USER}"
if [ -f /replicated.txt ]; then
  echo "Mongo is already set up"
else
  echo "Setting up mongo replication and seeding initial data..."
  # Wait for few seconds until the mongo server is up
  sleep 50
  mongo --host mongo --port 27017 -u $MONGO_USER -p $MONGO_PW initiate-replica-set.js
  echo "Replication done..."
  # Wait for few seconds until replication takes effect
  sleep 50
  touch /replicated.txt
fi