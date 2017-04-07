FROM ubuntu
MAINTAINER Rafael de Morais "rdemorais.freitas@gmail.com"
RUN apt-get update && \
    apt-get install -y wget --no-install-recommends && \
    mkdir /usr/java && \
    cd /usr/java && \
    wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u112-b15/jdk-8u112-linux-x64.tar.gz && \
    tar -xvf jdk-8u112-linux-x64.tar.gz && \
    chown -R root:root /usr/java/jdk1.8.0_112 && \
    rm -f jdk-8u112-linux-x64.tar.gz && \
    apt-get remove -y wget && \
    apt-get clean
ENV JAVA_HOME=/usr/java/jdk1.8.0_112 \
    PATH=$PATH:/usr/java/jdk1.8.0_112/bin \
    CLASSPATH=$CLASSPATH:/usr/java/jdk1.8.0_112/lib