# Use an official Conda image as the base
FROM --platform=linux/amd64 continuumio/miniconda3

# Set the working directory
WORKDIR /app

# Copy your environment.yaml file into the container
COPY environment.yaml /tmp/environment.yaml

# Create the Conda environment
RUN conda env create -f /tmp/environment.yaml

# Set the environment variables for Conda to auto-initialize
RUN echo "conda activate AirTag_env" >> ~/.bashrc

# Set entrypoint to use bash and automatically activate the environment
ENTRYPOINT ["/bin/bash", "-c", "source ~/.bashrc && exec bash"]

# By default, run the Conda environment with Python
CMD ["python"]

