from ultralytics import YOLO, checks, hub
checks()

hub.login('ab084fa7d461a2674af6880e5199604533945d2634')

model = YOLO('https://hub.ultralytics.com/models/T4sZgzaD4gSkmZbYcxZa')
results = model.train()
