#!/bin/bash

cp -r . /export/btian1/ChatGLM3
docker run -d -t --network=host -p 80:80 --cpus 64 --memory 512G --gpus '"device=0,1,2,3,4,5,6,7"' --privileged=True --ipc=host --ulimit memlock=-1 --ulimit stack=67108864 --name chatglm3 -v /etc/localtime:/etc/localtime -v /export/btian1:/codespace chatglm3_images
docker exec -it chatglm3 /bin/bash
clear