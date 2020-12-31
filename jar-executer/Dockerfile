FROM leijiangping/jdk
MAINTAINER leijiangping <leijiang21@126.com>
RUN apt-get update 

#
ENV ServerIp=""
ENV ServerPort=""
ENV DebugPort=""
ENV JAVA_OPTS=""
# Add scripts
ADD scripts /scripts
RUN chmod +x /scripts/*.sh
RUN mkdir /apps
RUN mkdir /apps/jars
RUN chmod -R +x /apps/jars
# Expose listen port
EXPOSE  8080  $ServerPort $DebugPort

# Expose our volumes
VOLUME ["/apps/jars","/apps/logs"]

# Command to run
ENTRYPOINT ["/scripts/runJars.sh"]
