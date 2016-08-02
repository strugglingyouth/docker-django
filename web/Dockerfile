
FROM daocloud.io/python:2.7

MAINTAINER tianfeiyu <www.tianfeiyu.com>

ADD blog.tar.gz /usr/src/ 

WORKDIR /usr/src/myblog

RUN pip install --no-cache-dir -r requirements.txt -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com


