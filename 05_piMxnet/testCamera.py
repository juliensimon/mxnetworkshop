from picamera import PiCamera

cam = PiCamera()
cam.resolution=(640,480)
cam.capture(”myimage.jpg”)
cam.close()
