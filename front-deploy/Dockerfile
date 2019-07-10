FROM centos:latest

RUN rpm -ivh http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm \
    && yum -y update \
    && yum -y install nfs-utils nginx curl \
    && yum install -y gcc-c++ make \
    && curl -sL https://rpm.nodesource.com/setup_10.x | bash - \
    # 安装 10.15.0版本的nodejs
    && yum -y install nodejs-10.15.0 \
    # 安装 git
    && yum -y install git