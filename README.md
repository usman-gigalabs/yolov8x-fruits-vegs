# yolov8x-fruits-vegs

## Run local

Install the Ultralytics pip package via your CLI

```pip install -U ultralytics```

Run python script

```python script.py```

## Run Docker

Before running docker with GPU, install following container toolkit.

### Installing the NVIDIA Container Toolkit

Follow following link for complete installation steps.

https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html


### Build Docker

```docker build -t usmanfaisalgigalabs/yolov8x-custom:latest .```

### Run Docker

```docker run --shm-size=20g --gpus all usmanfaisalgigalabs/yolov8x-custom:latest``

### Run through Docker-Compose

To build and run your application using Docker Compose, use the following commands:

```
docker-compose -f docker-compose.develop.yml build
docker-compose -f docker-compose.develop.yml up -d
```

To run docker image using Docker Compose, use the following commands:

``` docker-compose up -d ```