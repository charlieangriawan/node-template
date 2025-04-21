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
