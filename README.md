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

```docker build -t my-python-gpu-image .```

### Run Docker

```docker run --gpus all my-python-gpu-image```