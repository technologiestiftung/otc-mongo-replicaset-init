# from here https://blog.lysender.com/2019/08/mongodb-replicaset-on-docker-environment/
FROM mongo:4.2.6
WORKDIR /init
ARG MONGO_USER=root
ARG MONGO_PW=example
ENV MONGO_USER=${MONGO_USER}
ENV MONGO_PW=${MONGO_PW}
ADD ./initiate-replica-set.js ./initiate-replica-set.js
ADD ./bootstrap.sh ./bootstrap.sh
ADD ./bootstrap.sh ./bootstrap.sh
RUN chmod +x ./bootstrap.sh
ENTRYPOINT ["./bootstrap.sh"]