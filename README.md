# Node TypeScript Template
This repository is created using barebone `npm init`.

Running the application in development mode:
```bash
$ npm run dev
```

Running the application in docker:
```bash
$ make build  # Build the Docker image
$ make up     # Start the container in detached mode
$ make logs   # Follow container logs
$ make down   # Stop and remove the container
$ make clean  # Remove all traces of the container/image
```

Running the application in kubernetes:
```bash
$ kubectl apply -f kubernetes/deployment.yaml
$ kubectl apply -f kubernetes/service.yaml
$ minikube service app-service
```

## Deploying the application

AWS ECS:
```bash
$ terraform -chdir=terraform-ecs init
$ terraform -chdir=terraform-ecs apply
$ ./scripts/ecr.sh
```
