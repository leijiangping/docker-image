FROM leijiangping/jdk
MAINTAINER leijiangping <leijiang21@126.com>
RUN apt-get update 

#
ENV APPEND_JAVA_OPTS=""
ENV Default_JAVA_OPTS=" -Xms512m -Xmx512m -Dfile.encoding=utf-8"
ENV JAVA_OPTS=$Default_JAVA_OPTS:$APPEND_JAVA_OPTS;
# Add scripts
ADD scripts /scripts
RUN chmod +x /scripts/*.sh
RUN mkdir /apps
RUN mkdir /apps/jars
RUN chmod -R +x /apps/jars
# Expose listen port
EXPOSE 8080  8070

# Expose our volumes
VOLUME ["/apps/jars","/apps/logs"]

# Command to run
ENTRYPOINT ["/scripts/runJars.sh"]
