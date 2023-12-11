import os
from ultralytics import YOLO, checks, hub

# Check for required environment variables
login_token = os.environ.get('ULTRALYTICS_LOGIN_TOKEN')
model_url = os.environ.get('ULTRALYTICS_MODEL_URL')

# Validate the presence of environment variables
if not login_token or not model_url:
    raise ValueError("Please set ULTRALYTICS_LOGIN_TOKEN and ULTRALYTICS_MODEL_URL environment variables.")

# Perform checks
checks()

# Login to Ultralytics hub
hub.login(login_token)

# Create YOLO model
model = YOLO(model_url)

# Train the model
results = model.train()
