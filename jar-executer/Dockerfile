FROM leijiangping/jdk
MAINTAINER leijiangping <leijiang21@126.com>
RUN apt-get update 

# Add scripts
ADD scripts /scripts
RUN chmod +x /scripts/*.sh
RUN chmod +x /apps/jars/*.jar
# Expose listen port
EXPOSE 8080  8070

# Expose our volumes
VOLUME ["/apps/jars","/apps/logs"]

# Command to run
ENTRYPOINT ["/scripts/runJars.sh"]
