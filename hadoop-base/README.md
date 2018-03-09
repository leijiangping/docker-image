
【本项目是在 kiwenlau/hadoop-cluster-docker 的基础上修改产生的，本人也不太懂，哈哈！凑合用】
一. 项目介绍
将Hadoop打包到Docker镜像中，就可以快速地在单个机器上搭建Hadoop集群，这样可以方便新手测试和学习。

如下图所示，Hadoop的master和slave分别运行在不同的Docker容器中，其中hadoop-master容器中运行NameNode和ResourceManager，hadoop-slave容器中运行DataNode和NodeManager。NameNode和DataNode是Hadoop分布式文件系统HDFS的组件，负责储存输入以及输出数据，而ResourceManager和NodeManager是Hadoop集群资源管理系统YARN的组件，负责CPU和内存资源的调度。

![alt tag](https://github.com/leijiangping/docker-image/blob/master/hadoop-base/hadoop-cluster-docker.png)

项目中使用以下命令为Hadoop集群创建单独的网络:

sudo docker network create --driver=bridge hadoop
然后在运行Hadoop容器时，使用"--net=hadoop"选项，这时所有容器将运行在hadoop网络中，它们可以通过容器名称进行通信。

项目更新要点：

去除serf/dnsmasq

合并Master和Slave镜像

使用kiwenlau/compile-hadoop项目编译的Hadoo进行安装

优化Hadoop配置

二. 3节点Hadoop集群搭建步骤
1. 下载Docker镜像
sudo docker pull leijiangping/hadoop-base
2. 下载GitHub仓库
git clone https://github.com/leijiangping/docker-images
3. 创建Hadoop网络
sudo docker network create --driver=bridge hadoop
4. 运行Docker容器
cd hadoop-cluster-docker
./start-container.sh
运行结果

start hadoop-master container...
start hadoop-slave1 container...
start hadoop-slave2 container...
root@hadoop-master:~# 
启动了3个容器，1个master, 2个slave

运行后就进入了hadoop-master容器的/root目录

5. 启动hadoop
./start-hadoop.sh
6. 运行wordcount
./run-wordcount.sh
运行结果

input file1.txt:
Hello Hadoop
input file2.txt:
Hello Docker
wordcount output:
Docker    1
Hadoop    1
Hello    2
Hadoop网页管理地址:

NameNode: http://192.168.0.54:50070/

ResourceManager: http://192.168.0.54:8088/

http://192.168.0.54 为运行容器的虚拟主机的IP。

三. N节点Hadoop集群搭建步骤
1. 准备
参考第二部分1~3：下载Docker镜像，下载GitHub仓库，以及创建Hadoop网络

2. 重新构建Docker镜像
./resize-cluster.sh 5
可以指定任意N(N>1)

3. 启动Docker容器
./start-container.sh 5
与第2步中的N保持一致。

4. 运行Hadoop
参考第二部分5~6：启动Hadoop，并运行wordcount。
