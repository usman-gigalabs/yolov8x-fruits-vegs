# Use the official CUDA 12.2 base image
FROM nvidia/cuda:12.2.2-runtime-ubuntu22.04

# Set noninteractive mode
ARG DEBIAN_FRONTEND=noninteractive

# Set environment variables
ENV CUDA_HOME /usr/local/cuda
ENV PATH ${CUDA_HOME}/bin:${PATH}
ENV LD_LIBRARY_PATH ${CUDA_HOME}/lib64:${LD_LIBRARY_PATH}

# Install basic dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    build-essential \
    curl \
    wget \
    ca-certificates \
    git \
    libopencv-dev \
    libjpeg-dev \
    libpng-dev \
    python3.10 \
    python3.10-dev \
    python3.10-distutils \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Copy your Python script to the container
COPY script.py /app/

# Install Ultralytics
RUN pip install -U ultralytics

# Run the Python script when the container starts
CMD ["/usr/bin/python3.10", "script.py"]

