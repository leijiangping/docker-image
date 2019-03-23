#!/bin/bash
rootDir=/apps/jars
LOG_PATH=/apps/logs
for element in `ls $rootDir| grep .jar`
do
  dir_or_file=$rootDir"/"$element
  echo $dir_or_file
  exec nohup java -jar $dir_or_file >> $LOG_PATH/nohup.out  &
done
echo "Success"
#永久不关闭
while [ true ];
do
  sleep 1000
  echo $(date)
done
