git clone git@github.com:umlaeute/v4l2loopback.git
cd v4l2loopback
make
make install
sudo modprobe v4l2loopback
cd ..