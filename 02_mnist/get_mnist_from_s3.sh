aws s3 cp s3://jsimon-mxnetworkshop/train-images-idx3-ubyte.gz .
aws s3 cp s3://jsimon-mxnetworkshop/train-labels-idx1-ubyte.gz .
aws s3 cp s3://jsimon-mxnetworkshop/t10k-images-idx3-ubyte.gz .
aws s3 cp s3://jsimon-mxnetworkshop/t10k-labels-idx1-ubyte.gz .
gzip -d train*.gz t10k*.gz
