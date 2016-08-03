
# 基础镜像
FROM daocloud.io/python:2.7

# 维护者信息
MAINTAINER tianfeiyu <www.tianfeiyu.com>

ADD blog.tar.gz /usr/src/ 

# app 所在目录
WORKDIR /usr/src/myblog

# 安装 app 所需依赖
RUN pip install --no-cache-dir -r requirements.txt -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com


