import camera,polly,rekognition

def copyLocalFileToS3(filename, bucketName)
    boto3.client('s3').upload_file(filename, bucketName, filename)

if __name__ == "__main__":

	filename = "myimage.jpg"
	takePicture(filename)

	#
	# TO DO: copy local image to an S3 bucket
	#

	#
	# TO DO: use Rekognition to see faces and objects (see rekognition.py)
	#

	#
	# TO DO: build a text message using the output of Rekognition
	#

	p = polly.connectToPolly()
	polly.speak(p, message)
