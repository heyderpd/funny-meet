install:
	git clone git@github.com:umlaeute/v4l2loopback.git
	sudo apt-get install -y ffmpeg
	# sudo apt-get install -fy ffmpeg v4l-utils v4l2loopback-dkms

remove:
	sudo apt-get remove -fy ffmpeg
	# sudo apt-get remove -fy ffmpeg v4l-utils v4l2loopback-dkms
	rm -rf v4l2loopback

start:
	./v4l2loopback.install.sh
	./v4l2loopback.config.sh

stop:
	./v4l2loopback.remove.sh

run:
	ffmpeg -stream_loop -1 -re -i ./live.mp4 -map 0:v -f v4l2 /dev/video2

boring:
	ffmpeg -stream_loop -1 -re -i ./boring.mp4 -map 0:v -f v4l2 /dev/video2

# stream-display:
# 	ffmpeg -f x11grab -framerate 15 -video_size 1280x720 -i :0.0 -f v4l2 /dev/video2

test:
	ls -l /dev/video*
	ffplay /dev/video2
