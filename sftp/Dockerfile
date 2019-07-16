FROM atmoz/sftp:latest

# 改变apt-get源
COPY ./etc/apt/sources.list /etc/apt/sources.list

RUN apt-get update &&\
    apt-get -y install mime-support &&\
    apt-get -y install automake autotools-dev g++ git libcurl4-gnutls-dev libfuse-dev libssl-dev libxml2-dev make pkg-config &&\
    git clone https://github.com/aliyun/ossfs.git --depth=1 &&\
    cd ossfs &&\
    ./autogen.sh &&\
    ./configure &&\
    make && make install &&\
    cd ..