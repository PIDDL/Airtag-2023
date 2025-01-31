# AirTag Project Docker Setup

This repository contains a Docker setup for the **AirTag Project**, which includes a Conda environment that has all necessary dependencies installed. By using Docker, you can quickly spin up an isolated development environment for this project without needing to manually install dependencies on your local machine.

## Prerequisites

To use this Docker setup, you'll need to have the following installed:

- **Docker**: Docker must be installed and running on your machine. You can download Docker from the official website: [Docker Desktop](https://www.docker.com/products/docker-desktop)

## Getting Started

### 1. Set Working Directory

Make sure the Dockerfile and environment.yaml file are present in your current directory. The files are available on our repository.

### 2. Build the Docker Image

The Docker image is pre-configured with Miniconda and the required Conda environment.

Run the following command to build the Docker image:

```bash
docker build -t airtag_env .
```

This will create an image named airtag_env with all dependencies set up as per the environment.yaml file.

### 3. Run the Docker Container

To mount your current directory into the /app directory inside the Docker container, run:

```bash
docker run -it --rm -v $(pwd):/app airtag_env
```

This will launch the container and automatically activate the AirTag_env conda environment. It will also open a terminal where you can interact with the environment.

If you’re on a machine with a different architecture (e.g., arm64), you might need to specify the platform. In that case, use this command instead:

```bash
docker run --platform linux/amd64 -it --rm -v $(pwd):/app airtag_env
```

Once inside the container, navigate to the /app directory to access your local files:

```bash
cd /app
```

### Activate Conda Environment (If Needed)

If for any reason the environment isn’t automatically activated, you can manually activate the Conda environment with the following command:

```bash
conda activate AirTag_env
```

