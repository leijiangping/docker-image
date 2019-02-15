# Creates pseudo distributed hadoop 2.7.2 with pig 0.17.0 and hive 2.3.2
FROM leijiangping/hadoop-spark

# pig
RUN curl -s http://mirrors.hust.edu.cn/apache/pig/latest/pig-0.17.0.tar.gz | tar -xz -C /usr/local
ENV PIG_HOME /usr/local/pig-0.17.0/
RUN ln -s $PIG_HOME /usr/local/pig
ENV PATH $PATH:$PIG_HOME/bin

# hive
RUN curl -s http://mirrors.hust.edu.cn/apache/hive/stable-2/apache-hive-2.3.2-bin.tar.gz  | tar -xz -C /usr/local
ENV HIVE_HOME /usr/local/apache-hive-2.3.2-bin/
RUN ln -s $HIVE_HOME /usr/local/hive
ENV PATH $PATH:$HIVE_HOME/bin

