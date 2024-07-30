import PyCapture2


bus = PyCapture2.BusManager()	
cam = PyCapture2.Camera()
num_cams = bus.getNumOfCameras()
print(num_cams)
uid = bus.getCameraFromIndex(0)
cam.connect(uid)
cam.startCapture()
image = cam.retrieveBuffer()
img_data = image.getData()
print(img_data)