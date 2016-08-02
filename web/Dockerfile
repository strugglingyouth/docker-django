FROM python:2.7


ADD blog.tar.gz /usr/src/ 

#RUN mkdir -p /usr/src/

WORKDIR /usr/src/myblog

#COPY requirements.txt /usr/src/app/
#ADD app.tar.gz /usr/src/app 


RUN pip install --no-cache-dir -r requirements.txt -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com


