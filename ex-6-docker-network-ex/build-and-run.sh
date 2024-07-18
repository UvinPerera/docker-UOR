docker stop my_postgres_db
docker stop api
docker rm my_postgres_db
docker rm api
docker build -t my-node-app-network .
docker network create testnetwork
docker run -d --name my_postgres_db --network testnetwork -e POSTGRES_PASSWORD=postgres -p 5432:5432 postgres:13
docker run -d --name api --network testnetwork -p 3000:3000 my-node-app-network