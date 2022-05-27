create:
	@echo -n "conda activate falldet\n" | xclip -selection clipboard
	@#echo -n "source ~/Desktop/workspace/self-learn/env/bin/activate\n" | xclip -selection clipboard
	@echo "command copied, paste to continue"


# outside-docker commands
docker:
	docker run -it --gpus all -v $$PWD:/workspace/ -w /workspace/ --name falldet nvcr.io/nvidia/tensorrt:22.05-py3

start:
	docker start -i falldet

exec:
	docker exec -it falldet bash 

ip:
	docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' falldet

stop:
	docker stop falldet

rm:
	docker rm falldet

snr:
	docker stop falldet && docker rm falldet


# inside-docker commands
addh:
	echo "stty werase ^H" >> ~/.bashrc && . ~/.bashrc

pkg:
	apt-get update && apt-get install ffmpeg libsm6 libxext6 libqt5gui5 -y && rm -rf /var/lib/apt/lists/*
	export QT_DEBUG_PLUGINS=1
    

req:
	pip install -r requirements.txt

