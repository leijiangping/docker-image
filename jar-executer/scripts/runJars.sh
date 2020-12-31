#!/bin/bash
rootDir=/apps/jars
LOG_PATH=/apps/logs
#初始化目录
if [ ! -d "/apps" ]; then
    mkdir /apps
fi;
if [ ! -d "$rootDir" ]; then
    mkdir $rootDir
fi;
if [ ! -d "$LOG_PATH" ]; then
    mkdir  $LOG_PATH
fi;
#输出jar应用包数量
appCount=0
ls  $rootDir | grep  .jar |wc -l
#
JAVA_OPTS=" -Xms512m -Xmx512m  -Dserver.ip=$ServerIp -Dserver.port=$ServerPort -Dfile.encoding=utf-8"
#运行JARS
for element in `ls $rootDir| grep .jar`
do
  dir_or_file=$rootDir"/"$element
  java -server $JAVA_OPTS   -jar $dir_or_file  &
  #exec nohup java -jar $dir_or_file >> $LOG_PATH/nohup.out  &
  echo "应用:" $dir_or_file "启动完毕!"
  appCount=`expr $appCount + 1`
done
echo "All apps[$appCount] started"
#永久不关闭
while [ true ];
do
  sleep 1000
  echo $(date)
done
