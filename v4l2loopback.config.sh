cd v4l2loopback
sudo modprobe -r v4l2loopback
sudo modprobe videodev
sudo depmod -a
sudo insmod ./v4l2loopback.ko devices=1 video_nr=2 exclusive_caps=1
cd ..