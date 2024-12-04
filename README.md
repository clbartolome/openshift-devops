# openshift-devops
Repository with an application lifecycle overview


> [!IMPORTANT]  
> Last working versions: 
> - OpenShift: 4.16.13
> - OpenShift GitOps: 1.14.0
> - OpenShift Pipelines: 1.15.1 
> - OpenShift DevSpaces: TODO

## Install

### Pre-requisites
- OpenShift GitOps Operator installed with default configuration
- OpenShift Pipelines Operator installed with default configuration
TODO devspaces


### Deploy

- Open a terminal
- Login into OpenShift
- Access installation->ansible-navigator: `cd installation/ansible-navigator`
- Run installation:
```sh
OPENSHIFT_TOKEN=$(oc whoami --show-token)
CLUSTER_DOMAIN=$(oc whoami --show-server | sed 's~https://api\.~~' | sed 's~:.*~~')
ansible-navigator run ../install.yaml -m stdout \
    -e "ocp_host=$CLUSTER_DOMAIN" \
    -e "api_token=$OPENSHIFT_TOKEN"
```
- Review installed resources in final playbook message

### Uninstall

- Open a terminal
- Login into OpenShift
- Access installation->ansible-navigator: `cd installation/ansible-navigator`
- Run uninstallation: 
```sh
OPENSHIFT_TOKEN=$(oc whoami --show-token)
CLUSTER_DOMAIN=$(oc whoami --show-server | sed 's~https://api\.~~' | sed 's~:.*~~')
ansible-navigator run ../uninstall.yaml -m stdout \
    -e "ocp_host=$CLUSTER_DOMAIN" \
    -e "api_token=$OPENSHIFT_TOKEN"
```

## Demos

### Run Locally

In this demo we're going to run locally a Quarkus application.

Take a look at quarkus app *lol-champions-app* and execute the following steps:

- Go to Gitea Namespace and open URL. Login using credentials gitea/openshift
- Clone gitea lol-champions app repository and open it
```sh
# Create a temporary folder
mkdir ~/Desktop/deleteme/demo
cd ~/Desktop/deleteme/demo

# Clone repo
git clone <gitea_url>/gitea/lol-champions-app

# Open editor
code lol-champions-app
```
- Review code (pom, code, properties, tests)
- Run tests witn in-memory DB
```sh
# App directory
cd lol-champions-app

# Run tests
mvn clean test
```
- Run app on dev mode, will fail due there is no DB running locally
```sh
mvn compile quarkus:dev
```
- Start a Postgres DB locally on a container
```sh
# Start podman
podman machine start

#Start DB
podman run -d --name lol-app-db \
  -e POSTGRES_USER=develop \
  -e POSTGRES_PASSWORD=develop \
  -e POSTGRES_DB=lol-app-db \
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
  - Make a change to se how is automatically reloaded. For example add a rest endpoint in ChampionResource:
  ```java
  @GET
  @Path("/test")
  @Produces(MediaType.APPLICATION_JSON)
  public Response getTest() {

    return Response.ok("everything is fine").build();
  }
  ```
  - Revert changes
- Build image and run as a container
```sh
# Stop and remove postgres db
podman stop lol-app-db
podman rm lol-app-db

# Create a network for testing locally
podman network create lol-net

# Recreate the database 
podman run -d --name lol-app-db --network=lol-net \
  -e POSTGRES_USER=develop \
  -e POSTGRES_PASSWORD=develop \
  -e POSTGRES_DB=lol-app-db \
  -p 5432:5432 \
  postgres:10.5

# Check DB is running
podman ps

# Build image using a Dockerfile (review docker file while building)
mvn clean package -DskipTests -Dquarkus.profile=dev-podman
podman build . -t lol-app:0.0.1

# Review image
podman images

# Run image as a container and validate logs
podman run -i --rm -d -p 8080:8080 --name lol-app --network=lol-net lol-app:0.0.1
podman logs -f lol-app

# Open locally

# Clean up
podman stop lol-app lol-app-db
podman ps -a
podman rm lol-app-db
```

### Develop application using OpenShift DevSpaces

In this demo we're goint to review how DevSpaces can simplify the developmemnt process by integrating all required integrations and tools.

- Review Application *devfile*
- Go to OpenShift and open quick access link to *Red Hat OpenShift DevSpaces
- Login with your OCP user
- Click *Add WorkSpace*
- Introduce the repository URL - `https://github.com/clbartolome/openshift-devops` - Create & Open
- Wait until devspace is ready and review:
  - Review the code + git
  - Review tasks (F1 - Tasks:run tasks - devfile)
  - Review pod to understand there is a local Postgresql instance:
  ```sh
  # Open namespace
  oc project <user>-devspaces
  
  # Review pods
  oc get pods
  oc describe pod workspacesxxxxxx

  # Open logs for postgres
  oc get logs workspacesxxxxxx -c postgres
  ```
  - Review dev:quarkus and open endpoints
  - Stop/Delete namespace


### Run in Openshift

In this demo we're going to manually deploy the application and it's database (ephemeral) in an OCP namespace.
> NOTE: during the demo, review how to do all the steps in the 'developer console' before running the commands.

Execute the following steps:

- Upload image to Quay
```sh
# login into quay
podman login quay.io

# Tag image on Quay repository and push image
podman images
podman tag lol-app:0.0.1 quay.io/calopezb/lol-app:1.0.0
podman push quay.io/calopezb/lol-app:1.0.0

# Login into quay and change lol-app 'Repository Visibility' to 'public' - review tags
```

- Create an ephemeral database
```sh
# Login into your terminal with oc login and access demo-manual-deploy namespace
oc project demo-manual-deploy

# Create an ephemeral postgresql db
oc new-app postgresql-ephemeral \
  -p DATABASE_SERVICE_NAME=lol-app-db \
  -p POSTGRESQL_USER=develop \
  -p POSTGRESQL_PASSWORD=develop \
  -p POSTGRESQL_DATABASE=lol-app-db

# Deploy lol-app using Quay image
oc new-app --name=lol-app quay.io/calopezb/lol-app:1.0.0

# Review logs, terminal,...

# Expose SVC to generate a route
oc expose svc lol-app

# Access app using route
```

### Create application using OpenShift s2i

In this demo we'll create the application image using s2i process
> NOTE: Review build procesess on OpenShift and base images
> NOTE: Execute this commands after showing how would it be on the 'Developer Console'

Follow these steps:

- Login and review available s2i images:
```sh
# Login into your terminal with oc login and access demo-s2i namespace
oc project demo-s2i

# Review image for jdk 17
oc get is -n openshift | grep jdk-17
```

- Deploy application:
```sh
# Create application using s2i
oc new-app --name=lol-app \
  openshift/ubi8-openjdk-17:1.12~http://gitea.gitea.svc.cluster.local:3000/gitea/lol-champions-app \
  --strategy=source --as-deployment-config=false

# Review buildconfig and logs (why is failing)
oc get pods
oc logs lol-app-1-build -f
oc logs -f lol-app-xxxxx
```

- Add configuration:
```sh
# Create configuration map
oc create cm lol-app-config --from-literal DB_HOST=lol-app-db --from-literal DB_PORT=5432 --from-literal DB_NAME=lol-app-db
oc get cm lol-app-config -o yaml

# Create secret
oc create secret generic lol-app-secured  --from-literal DB_USER=user --from-literal DB_PASS=pass
oc get secret lol-app-secured -o yaml
echo cGFzcw== | base64 -d

# Configure cm and secret as environment variables in the deployment
oc set env deploy/lol-app --from cm/lol-app-config
oc set env deploy/lol-app --from secret/lol-app-secured

# Review the deployment and the pod
oc get deploy lol-app -o yaml
oc get pods
oc rsh lol-app-xxxxx
```

- Expose application:
```sh
# Expose service
oc expose svc lol-app
oc get route
```

- Tune the developer console view
```sh
# Add labels
oc label deploy lol-app \
  app.kubernetes.io/part-of=lol-champions \
  app.openshift.io/runtime=quarkus

# Add annotations to link app with the DB
oc annotate deploy lol-app app.openshift.io/connects-to='[{"apiVersion":"apps/v1","kind":"Deployment","name":"lol-app-db"}]'
```


