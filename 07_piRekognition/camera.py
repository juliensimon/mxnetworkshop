from picamera import PiCamera

def takePicture(filename):
        cam = PiCamera()
        cam.resolution=(640,480)
        cam.capture(filename)
        cam.close()
