wget http://jsimon-mxnetworkshop.s3-website-eu-west-1.amazonaws.com/train-images-idx3-ubyte.gz .
wget http://jsimon-mxnetworkshop.s3-website-eu-west-1.amazonaws.com/train-labels-idx1-ubyte.gz .
wget http://jsimon-mxnetworkshop.s3-website-eu-west-1.amazonaws.com/t10k-images-idx3-ubyte.gz .
wget http://jsimon-mxnetworkshop.s3-website-eu-west-1.amazonaws.com/t10k-labels-idx1-ubyte.gz .
gzip -d train*.gz t10k*.gz
