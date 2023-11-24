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
	ffmpeg -stream_loop -1 -re -i ./esquisito.mp4 -map 0:v -f v4l2 /dev/video2

talk:
	ffmpeg -stream_loop -1 -re -i ./talk.mp4 -map 0:v -f v4l2 /dev/video2

street:
	ffmpeg -stream_loop -1 -re -i ./street.mp4 -map 0:v -f v4l2 /dev/video2

amolecer:
	ffmpeg -stream_loop -1 -re -i ./amolecer.mkv -map 0:v -f v4l2 /dev/video2

robin:
	ffmpeg -stream_loop -1 -re -i ./robin.webm -map 0:v -f v4l2 /dev/video2

gandalf:
	ffmpeg -stream_loop -1 -re -i ./gandalf.mkv -map 0:v -f v4l2 /dev/video2

mamilos:
	ffmpeg -stream_loop -1 -re -i ./mamilos.webm -map 0:v -f v4l2 /dev/video2

boring:
	ffmpeg -stream_loop -1 -re -i ./boring.mp4 -map 0:v -f v4l2 /dev/video2

parkour:
	ffmpeg -stream_loop -1 -re -i ./parkour.webm -map 0:v -f v4l2 /dev/video2

# stream-display:
# 	ffmpeg -f x11grab -framerate 15 -video_size 1280x720 -i :0.0 -f v4l2 /dev/video2

# download:
# 	sudo pip3 install --upgrade yt-dlp
# 	yt-dlp https://www.youtube.com/watch\?v\=0Kvw2BPKjz0

test:
	ls -l /dev/video*
	ffplay /dev/video2
