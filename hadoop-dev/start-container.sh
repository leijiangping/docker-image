#!/bin/bash

# the default node number is 2
N=${1:-2}


# start hadoop master container
sudo docker rm -f hadoop-master &> /dev/null
echo "start hadoop-master container..."
sudo docker run -itd \
                --net=hadoop \
                -p 50070:50070 \
                -p 8088:8088 \
		-p 9000:9000 \
                --name hadoop-master \
                --hostname hadoop-master \
                leijiangping/hadoop &> /dev/null


# start hadoop slave container
i=1
while [ $i -lt $N ]
do
	sudo docker rm -f hadoop-slave$i &> /dev/null
	echo "start hadoop-slave$i container..."
	sudo docker run -itd \
	                --net=hadoop \
			-p 9000:9000 \
			-p 50010:50010 \
	                --name hadoop-slave$i \
	                --hostname hadoop-slave$i \
	                leijiangping/hadoop &> /dev/null
	i=$(( $i + 1 ))
done 

# get into hadoop master container
sudo docker exec -it hadoop-master bash
