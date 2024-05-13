# LOL Champions APP

## Run Locally

- Run tests witn in-memory DB

```sh
# App directory
cd lol-champions-app

# Run tests
mvn clean test
```

- Start a Postgres DB locally on a container

```sh
# Start podman
podman machine start

#Start DB
podman run -d --name lol-champions-db \
  -e POSTGRES_USER=develop \
  -e POSTGRES_PASSWORD=develop \
  -e POSTGRES_DB=lol-champions-db \
  -p 5432:5432 \
  postgres:10.5

# Check DB is running
podman ps
```

- Run application as a process

```sh
mvn compile quarkus:dev
```

- Validate on a web browser:
  - root
  - /q/health/live
  - wrong url to see the error dev page
  - Make a change to se how is automatically reloaded.

## Run Locally as a container

- Build image and run as a container

```sh
# Create a network for testing locally
podman network create lol-net

# Recreate the database 
podman run -d --name lol-champions-db --network=lol-net \
  -e POSTGRES_USER=develop \
  -e POSTGRES_PASSWORD=develop \
  -e POSTGRES_DB=lol-champions-db \
  -p 5432:5432 \
  postgres:10.5

# Check DB is running
podman ps

# Build image using a Dockerfile (review docker file while building)
mvn clean package -DskipTests -Dquarkus.profile=dev-podman
podman build . -t lol-champions-app:0.0.1

# Review image
podman images

# Run image as a container and validate logs
podman run -i --rm -d -p 8080:8080 --name lol-champions-app --network=lol-net lol-champions-app:0.0.1
podman logs -f lol-champions-app

# Open locally

# Clean up
podman stop lol-champions-app lol-champions-db
podman ps -a
podman rm lol-champions-db
```